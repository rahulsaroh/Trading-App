import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/option_math_utils.dart';
import '../../../market_depth/market_data_providers.dart';
import '../widgets/oi_bar_chart.dart';

class OptionsChainScreen extends ConsumerStatefulWidget {
  final String symbol;

  const OptionsChainScreen({super.key, required this.symbol});

  @override
  ConsumerState<OptionsChainScreen> createState() => _OptionsChainScreenState();
}

class _OptionsChainScreenState extends ConsumerState<OptionsChainScreen> {
  String _selectedSymbol = 'NIFTY';

  @override
  void initState() {
    super.initState();
    _selectedSymbol = widget.symbol == 'NIFTY' || widget.symbol == 'BANKNIFTY' ? widget.symbol : 'NIFTY';
  }

  @override
  Widget build(BuildContext context) {
    final chainAsync = ref.watch(optionChainProvider(_selectedSymbol));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('$_selectedSymbol Chain', style: AppTextStyles.headlineMedium),
        backgroundColor: AppColors.background,
        actions: [
          _buildPCRBadge(chainAsync),
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          _buildHeaderControls(),
          Expanded(
            child: chainAsync.when(
              data: (chain) => _buildChainTable(chain),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error loading options chain')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPCRBadge(AsyncValue chainAsync) {
    return chainAsync.maybeWhen(
      data: (chain) {
        final pcr = OptionMathUtils.calculatePCR(chain.calls, chain.puts);
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          margin: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: pcr > 1 ? AppColors.accentGreen.withOpacity(0.2) : AppColors.accentRed.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text('PCR: ${pcr.toStringAsFixed(2)}', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }

  Widget _buildHeaderControls() {
    return Container(
      padding: const EdgeInsets.all(12),
      color: AppColors.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSymbolToggle(),
          const Icon(Icons.calendar_today, size: 16, color: AppColors.textSecondary),
        ],
      ),
    );
  }

  Widget _buildSymbolToggle() {
    return Row(
      children: ['NIFTY', 'BANKNIFTY'].map((s) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ChoiceChip(
          label: Text(s),
          selected: _selectedSymbol == s,
          onSelected: (val) => setState(() => _selectedSymbol = s),
          selectedColor: AppColors.primaryBlue,
          labelStyle: TextStyle(fontSize: 10, color: _selectedSymbol == s ? Colors.white : AppColors.textSecondary),
        ),
      )).toList(),
    );
  }

  Widget _buildChainTable(chain) {
    final maxPain = OptionMathUtils.calculateMaxPain(chain);

    return SingleChildScrollView(
      child: Column(
        children: [
          _buildIndexSummary(chain.underlyingValue),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FixedColumnWidth(80),
              2: FlexColumnWidth(1),
            },
            children: [
              TableRow(
                decoration: const BoxDecoration(color: AppColors.surface),
                children: [
                  _buildHeaderCell('CALLS LTP'),
                  _buildHeaderCell('STRIKE'),
                  _buildHeaderCell('PUTS LTP'),
                ],
              ),
              ...List.generate(chain.strikePrices.length, (index) {
                final strike = chain.strikePrices[index];
                final call = chain.calls[index];
                final put = chain.puts[index];
                final isATM = (strike - chain.underlyingValue).abs() < 50; 
                final isITMCall = strike < chain.underlyingValue;
                final isITMPut = strike > chain.underlyingValue;

                return TableRow(
                  children: [
                    _buildPriceCell(call.ltp ?? 0.0, isITMCall, isATM),
                    _buildStrikeCell(strike, maxPain == strike),
                    _buildPriceCell(put.ltp ?? 0.0, isITMPut, isATM),
                  ],
                );
              }),
            ],
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('OI Analysis (Calls vs Puts)'),
          OIBarChart(chain: chain),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildIndexSummary(double value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Text('Spot Price', style: AppTextStyles.labelSmall),
          Text(value.toStringAsFixed(2), style: AppTextStyles.displayLarge.copyWith(fontSize: 28)),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Center(child: Text(text, style: AppTextStyles.labelSmall.copyWith(fontWeight: FontWeight.bold))),
    );
  }

  Widget _buildStrikeCell(double strike, bool isMaxPain) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(color: AppColors.surface),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isMaxPain) const Icon(Icons.push_pin, size: 10, color: Colors.orange),
            Text(strike.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceCell(double ltp, bool isITM, bool isATM) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isATM ? AppColors.primaryBlue.withOpacity(0.1) : (isITM ? Colors.blueGrey.withOpacity(0.1) : null),
      ),
      child: Center(
        child: Text(ltp.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.w500)),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title, style: AppTextStyles.headlineMedium),
      ),
    );
  }
}
