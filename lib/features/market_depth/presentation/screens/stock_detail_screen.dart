import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/currency_utils.dart';
import '../../../market_depth/market_data_providers.dart';
import '../widgets/price_chart_widget.dart';
import '../widgets/market_depth_widget.dart';
import '../../../order_management/presentation/widgets/order_placement_bottom_sheet.dart';

class StockDetailScreen extends ConsumerStatefulWidget {
  final String symbol;

  const StockDetailScreen({super.key, required this.symbol});

  @override
  ConsumerState<StockDetailScreen> createState() => _StockDetailScreenState();
}

class _StockDetailScreenState extends ConsumerState<StockDetailScreen> {
  String _timeframe = '1D';

  @override
  Widget build(BuildContext context) {
    final quoteAsync = ref.watch(stockQuoteProvider(widget.symbol));
    
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(widget.symbol, style: AppTextStyles.headlineMedium),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: quoteAsync.when(
        data: (quote) => _buildContent(quote),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error loading data')),
      ),
      bottomNavigationBar: quoteAsync.whenOrNull(data: (quote) => _buildBottomBar(quote)),
    );
  }

  Widget _buildContent(quote) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(quote),
          const SizedBox(height: 24),
          _buildTimeframeSelector(),
          const SizedBox(height: 16),
          const PriceChartWidget(data: [], isLineChart: true), 
          const SizedBox(height: 24),
          MarketDepthWidget(ltp: quote.ltp),
          const SizedBox(height: 24),
          _buildFundamentalsGrid(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildHeader(quote) {
    final isUp = quote.change >= 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('NSE • EQUITY', style: AppTextStyles.labelSmall),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(CurrencyUtils.format(quote.ltp), style: AppTextStyles.displayLarge.copyWith(fontSize: 32)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${isUp ? "+" : ""}${quote.change.toStringAsFixed(2)}',
                  style: TextStyle(color: isUp ? AppColors.accentGreen : AppColors.accentRed, fontWeight: FontWeight.bold),
                ),
                Text(
                  '(${quote.changePct.toStringAsFixed(2)}%)',
                  style: TextStyle(color: isUp ? AppColors.accentGreen : AppColors.accentRed, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimeframeSelector() {
    final timeframes = ['1D', '1W', '1M', '3M', '1Y', '5Y'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: timeframes.map((tf) => ChoiceChip(
        label: Text(tf),
        selected: _timeframe == tf,
        onSelected: (val) => setState(() => _timeframe = tf),
        selectedColor: AppColors.primaryBlue,
        backgroundColor: AppColors.surface,
        labelStyle: TextStyle(color: _timeframe == tf ? Colors.white : AppColors.textSecondary, fontSize: 10),
      )).toList(),
    );
  }

  Widget _buildFundamentalsGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fundamentals', style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 3,
          children: [
            _buildFundamentalItem('Mkt Cap', '₹12.4T'),
            _buildFundamentalItem('P/E Ratio', '24.5'),
            _buildFundamentalItem('Div Yield', '1.2%'),
            _buildFundamentalItem('52W High', '₹2,650.00'),
            _buildFundamentalItem('52W Low', '₹2,100.00'),
            _buildFundamentalItem('ROE', '18.4%'),
          ],
        ),
      ],
    );
  }

  Widget _buildFundamentalItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.labelSmall),
        Text(value, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildBottomBar(quote) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.5)),
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => _showOrderSheet(context, 'BUY', quote.ltp),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.accentGreen, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
              child: const Text('BUY', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () => _showOrderSheet(context, 'SELL', quote.ltp),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.accentRed, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16)),
              child: const Text('SELL', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  void _showOrderSheet(BuildContext context, String side, double ltp) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => OrderPlacementBottomSheet(
        symbol: widget.symbol,
        side: side,
        ltp: ltp,
      ),
    );
  }
}
