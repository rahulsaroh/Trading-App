import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/currency_utils.dart';
import '../../domain/analytics_utils.dart';
import '../widgets/performance_charts.dart';
import '../../../../core/database/database_provider.dart';

final allTradesProvider = FutureProvider((ref) {
  final db = ref.watch(appDatabaseProvider);
  return db.select(db.trades).get();
});

class AnalyticsScreen extends ConsumerWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tradesAsync = ref.watch(allTradesProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Trading Analytics'), backgroundColor: AppColors.background, elevation: 0),
      body: tradesAsync.when(
        data: (trades) => _buildContent(trades),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, _) => const Center(child: Text('Error loading analytics')),
      ),
    );
  }

  Widget _buildContent(trades) {
    final stats = AnalyticsUtils.calculate(trades);
    final insights = TradingInsightsEngine.getInsights(trades);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatsRow(stats),
          const SizedBox(height: 32),
          _buildSection('Equity Curve', EquityCurveChart(trades: trades)),
          const SizedBox(height: 32),
          _buildSection('Daily Performance', DailyPnlBarChart(trades: trades)),
          const SizedBox(height: 32),
          _buildInsightsCard(insights),
          const SizedBox(height: 32),
          _buildPerformanceTable(trades),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildStatsRow(PerformanceStats stats) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildStatCard('Total P&L', CurrencyUtils.format(stats.totalPnl), stats.totalPnl >= 0 ? AppColors.accentGreen : AppColors.accentRed),
          _buildStatCard('Win Rate', '${stats.winRate.toStringAsFixed(1)}%', AppColors.primaryBlue),
          _buildStatCard('Profit Factor', stats.profitFactor.toStringAsFixed(2), Colors.orange),
          _buildStatCard('Avg Profit', CurrencyUtils.format(stats.avgProfit), AppColors.accentGreen),
        ],
      ),
    );
  }

  Widget _buildStatCard(String label, String value, Color color) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.border)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTextStyles.labelSmall),
          const SizedBox(height: 4),
          Text(value, style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }

  Widget _buildSection(String title, Widget chart) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.headlineMedium),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(16)),
          child: chart,
        ),
      ],
    );
  }

  Widget _buildInsightsCard(List<String> insights) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColors.primaryBlue.withOpacity(0.05), borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.primaryBlue.withOpacity(0.2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.lightbulb_outline, color: AppColors.primaryBlue, size: 20),
              SizedBox(width: 8),
              Text('Trading Patterns', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryBlue)),
            ],
          ),
          const SizedBox(height: 12),
          ...insights.map((i) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text('• $i', style: AppTextStyles.bodySmall),
          )),
        ],
      ),
    );
  }

  Widget _buildPerformanceTable(trades) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Instrument Performance', style: AppTextStyles.headlineMedium),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(12)),
          child: DataTable(
            horizontalMargin: 12,
            columnSpacing: 10,
            columns: const [
              DataColumn(label: Text('Symbol', style: TextStyle(fontSize: 10))),
              DataColumn(label: Text('Trades', style: TextStyle(fontSize: 10))),
              DataColumn(label: Text('P&L', style: TextStyle(fontSize: 10))),
            ],
            rows: const [
              DataRow(cells: [DataCell(Text('NIFTY')), DataCell(Text('12')), DataCell(Text('₹12,400', style: TextStyle(color: AppColors.accentGreen)))]),
              DataRow(cells: [DataCell(Text('RELIANCE')), DataCell(Text('5')), DataCell(Text('-₹2,100', style: TextStyle(color: AppColors.accentRed)))]),
            ],
          ),
        ),
      ],
    );
  }
}
