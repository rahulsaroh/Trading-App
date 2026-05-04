import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/market_hours_utils.dart';
import '../../../../shared/widgets/bottom_nav_bar.dart';
import '../widgets/portfolio_summary_card.dart';
import '../widgets/index_pulse_card.dart';
import '../../../market_depth/market_data_providers.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final mktStatus = ref.watch(marketStatusProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => ref.refresh(nifty50StocksProvider),
          color: AppColors.primaryBlue,
          child: CustomScrollView(
            slivers: [
              _buildAppBar(),
              if (mktStatus == MarketStatus.CLOSED) _buildClosedBanner(),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const PortfolioSummaryCard(
                      totalValue: 1000000.0,
                      dayPnL: 0.0,
                      dayPnLPct: 0.0,
                      investedValue: 1000000.0,
                    ),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Market Pulse'),
                    const SizedBox(height: 12),
                    _buildMarketPulseRow(),
                    const SizedBox(height: 24),
                    _buildSectionHeader('NIFTY 50 Intraday'),
                    const SizedBox(height: 12),
                    _buildPlaceholderChart(),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Active Positions'),
                    _buildEmptyState('No active positions'),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Recent Orders'),
                    _buildEmptyState('No recent orders'),
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IndexPulseCard(name: 'NIFTY 50', value: 22475.85, change: 112.4, changePct: 0.50),
          IndexPulseCard(name: 'BANKNIFTY', value: 48120.30, change: -45.2, changePct: -0.09),
          IndexPulseCard(name: 'SENSEX', value: 74248.22, change: 350.1, changePct: 0.47),
          IndexPulseCard(name: 'NIFTY IT', value: 38240.10, change: 120.5, changePct: 0.32),
        ],
      ),
    );
  }

  Widget _buildPlaceholderChart() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border.withOpacity(0.5)),
      ),
      child: Center(
        child: Icon(Icons.show_chart, color: AppColors.border, size: 48),
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: AppColors.surface.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.inbox_outlined, color: AppColors.border, size: 32),
            const SizedBox(height: 12),
            Text(message, style: AppTextStyles.labelSmall),
          ],
        ),
      ),
    );
  }
}
