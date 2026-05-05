import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/currency_utils.dart';
import '../../../../data/datasources/app_database.dart';
import '../../../../shared/widgets/bottom_nav_bar.dart';
import '../widgets/portfolio_summary_card.dart';
import '../providers/portfolio_providers.dart';

class PortfolioScreen extends ConsumerWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text('Portfolio'),
          backgroundColor: AppColors.background,
          bottom: const TabBar(
            indicatorColor: AppColors.primaryBlue,
            labelColor: AppColors.primaryBlue,
            unselectedLabelColor: AppColors.textSecondary,
            tabs: [
              Tab(text: 'POSITIONS'),
              Tab(text: 'ORDERS'),
              Tab(text: 'HOLDINGS'),
            ],
          ),
        ),
        body: Column(
          children: [
            const PortfolioSummaryHeaderCard(),
            Expanded(
              child: TabBarView(
                children: [
                  _PositionsTab(),
                  _OrdersTab(),
                  _HoldingsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PositionsTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final positionsAsync = ref.watch(activePositionsProvider);

    return positionsAsync.when(
      data: (positions) => positions.isEmpty 
        ? const Center(child: Text('No active positions'))
        : ListView.builder(
            itemCount: positions.length,
            itemBuilder: (context, index) => _PositionCard(position: positions[index]),
          ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => const Center(child: Text('Error loading positions')),
    );
  }
}

class _PositionCard extends ConsumerWidget {
  final Position position;
  const _PositionCard({required this.position});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final positionsAsync = ref.watch(activePositionsProvider);
    final ltp = position.currentPrice; // Will be updated from price stream
    
    // Calculate P&L using provider method
    double pnl = 0;
    if (positionsAsync.value != null) {
      // Find exact position in list to use its method
      final pos = positionsAsync.value!.firstWhere((p) => p.id == position.id, orElse: () => position);
      pnl = ref.read(activePositionsProvider.notifier).calculatePnl(pos, ltp);
    }

    final isProfit = pnl >= 0;
    final pnlColor = isProfit ? AppColors.accentGreen : AppColors.accentRed;
    final formattedPnl = CurrencyUtils.format(pnl);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.border, width: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(position.symbol, style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
              Text('${position.quantity} Qty • ${position.quantity > 0 ? "LONG" : "SHORT"}', style: AppTextStyles.labelSmall),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(formattedPnl, style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: pnlColor)),
              Text('P&L', style: AppTextStyles.labelSmall),
            ],
          ),
        ],
      ),
    );
  }
}

class _OrdersTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(allOrdersProvider);

    return ordersAsync.when(
      data: (orders) => ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text(order.symbol, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('${order.side} • ${order.orderType} • ${order.quantity} Qty'),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: _getStatusColor(order.status).withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
              child: Text(order.status, style: TextStyle(color: _getStatusColor(order.status), fontSize: 10, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => const Center(child: Text('Error loading orders')),
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
}

class _HoldingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Holdings will appear here after T+2 days'));
  }
}
