import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/market_hours_utils.dart';
import '../../../../core/utils/currency_utils.dart';
import '../../../../shared/widgets/bottom_nav_bar.dart';
import '../widgets/portfolio_summary_card.dart';
import '../widgets/index_pulse_card.dart';
import '../widgets/nifty_intraday_chart.dart';
import '../widgets/data_freshness_indicator.dart';
import '../../../market_depth/market_data_providers.dart';
import '../../../portfolio/presentation/providers/portfolio_providers.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(marketStatusProvider);
    final portfolioAsync = ref.watch(portfolioSummaryProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(indexQuotesProvider);
            ref.invalidate(niftyIntradayChartProvider);
          },
          color: AppColors.primaryBlue,
          child: CustomScrollView(
            slivers: [
              _buildAppBar(),
              if (status == MarketStatus.CLOSED) _buildClosedBanner(),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    // Portfolio Summary from DB
                    portfolioAsync.when(
                      data: (portfolio) => PortfolioSummaryCard(
                        totalValue: portfolio.totalValue,
                        dayPnL: portfolio.dayPnl,
                        dayPnLPct: portfolio.dayPnlPercentage,
                        investedValue: portfolio.investedValue,
                      ),
                      loading: () => const SizedBox(height: 120, child: Center(child: CircularProgressIndicator())),
                      error: (_, __) => const PortfolioSummaryCard(
                        totalValue: 1000000.0,
                        dayPnL: 0.0,
                        dayPnLPct: 0.0,
                        investedValue: 1000000.0,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Market Pulse'),
                    const SizedBox(height: 12),
                    _buildMarketPulseRow(),
                    const SizedBox(height: 24),
                    _buildSectionHeader('NIFTY 50 Intraday'),
                    const SizedBox(height: 12),
                    _buildIntradayChart(),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Active Positions'),
                    _buildPositionsList(),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Recent Orders'),
                    _buildRecentOrders(),
                    const SizedBox(height: 100),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      floating: true,
      pinned: true,
      backgroundColor: AppColors.background,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome, Trader', style: AppTextStyles.labelSmall),
          Text('TradeDesk', style: AppTextStyles.headlineMedium),
        ],
      ),
      actions: [
        const Center(child: DataFreshnessIndicator()),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(Icons.search, color: AppColors.textPrimary),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none, color: AppColors.textPrimary),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildClosedBanner() {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.amber.withOpacity(0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_clock, size: 14, color: Colors.amber),
            const SizedBox(width: 8),
            Text(
              'Market is closed. Opens tomorrow at 9:15 AM',
              style: AppTextStyles.labelSmall.copyWith(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.headlineMedium.copyWith(fontSize: 18)),
        TextButton(
          onPressed: () {},
          child: Text('View All', style: AppTextStyles.labelSmall.copyWith(color: AppColors.primaryBlue)),
        ),
      ],
    );
  }

  Widget _buildMarketPulseRow() {
    return Consumer(builder: (context, ref, _) {
      final indexAsync = ref.watch(indexQuotesProvider);
      return indexAsync.when(
        loading: () => _buildIndexShimmerRow(),
        error: (e, _) => _buildIndexErrorCard(e.toString()),
        data: (indices) => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: indices.entries.map((entry) => 
              IndexPulseCard(
                name: entry.key,
                value: entry.value.ltp,
                change: entry.value.change,
                changePct: entry.value.changePct,
              )
            ).toList(),
          ),
        ),
      );
    });
  }

  Widget _buildIntradayChart() {
    return Consumer(builder: (context, ref, _) {
      final chartAsync = ref.watch(niftyIntradayChartProvider);
      return chartAsync.when(
        loading: () => const SizedBox(
          height: 200,
          child: Center(child: CircularProgressIndicator(
            color: Color(0xFF3B82F6),
          )),
        ),
        error: (e, _) => SizedBox(
          height: 200,
          child: Center(child: Text('Chart unavailable\n$e',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white54))),
        ),
        data: (candles) => candles.isEmpty
          ? const SizedBox(
              height: 200,
              child: Center(child: Text(
                'Intraday data unavailable\n(Market may be closed)',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white54),
              )),
            )
          : NiftyIntradayChart(candles: candles),
      );
    });
  }

  Widget _buildIndexShimmerRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(3, (i) => Container(
          width: 150,
          height: 80,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
          ),
        )),
      ),
    );
  }

  Widget _buildIndexErrorCard(String error) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.red.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
      child: Text('Data error: $error', style: const TextStyle(color: Colors.red, fontSize: 12)),
    );
  }

  Widget _buildPositionsList() {
    final positionsAsync = ref.watch(activePositionsProvider);
    return positionsAsync.when(
      data: (positions) => positions.isEmpty
          ? _buildEmptyState('No active positions')
          : SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: positions.length,
                itemBuilder: (ctx, i) => SizedBox(
                  width: 200,
                  child: _PositionCard(position: positions[i]),
                ),
              ),
            ),
      loading: () => const SizedBox(height: 100, child: Center(child: CircularProgressIndicator())),
      error: (_, __) => _buildEmptyState('Error loading positions'),
    );
  }

  Widget _buildRecentOrders() {
    final ordersAsync = ref.watch(allOrdersProvider);
    return ordersAsync.when(
      data: (orders) => orders.isEmpty
          ? _buildEmptyState('No recent orders')
          : SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: orders.length,
                itemBuilder: (ctx, i) {
                  final order = orders[i];
                  return SizedBox(
                    width: 180,
                    child: Card(
                      color: AppColors.surface,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(order.symbol, style: AppTextStyles.bodyMedium),
                            Text('${order.side} ${order.quantity}', style: AppTextStyles.labelSmall),
                            Text(CurrencyUtils.format(order.price), style: AppTextStyles.bodySmall),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                color: _getStatusColor(order.status).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(order.status, style: TextStyle(color: _getStatusColor(order.status), fontSize: 10)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
      loading: () => const SizedBox(height: 100, child: Center(child: CircularProgressIndicator())),
      error: (_, __) => _buildEmptyState('Error loading orders'),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'EXECUTED': return AppColors.accentGreen;
      case 'PENDING': return Colors.orange;
      case 'CANCELLED': return AppColors.textSecondary;
      default: return AppColors.accentRed;
    }
  }

  Widget _buildEmptyState(String message) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border.withOpacity(0.3)),
      ),
      child: Center(
        child: Text(message, style: AppTextStyles.labelSmall.copyWith(color: AppColors.textSecondary)),
      ),
    );
  }
}

class _PositionCard extends StatelessWidget {
  final dynamic position;

  const _PositionCard({required this.position});

  @override
  Widget build(BuildContext context) {
    final isUp = position.quantity > 0;
    return Card(
      color: AppColors.surface,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(position.symbol, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
            Text('${position.quantity} Qty', style: AppTextStyles.labelSmall),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(CurrencyUtils.format(position.averagePrice), style: AppTextStyles.labelSmall),
                Text(
                  CurrencyUtils.format(position.currentPrice),
                  style: TextStyle(
                    color: position.currentPrice >= position.averagePrice ? AppColors.accentGreen : AppColors.accentRed,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
