import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/currency_utils.dart';
import '../providers/portfolio_providers.dart';

class PortfolioSummaryHeaderCard extends ConsumerWidget {
  const PortfolioSummaryHeaderCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(portfolioSummaryProvider);

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFF1A1D25), Color(0xFF0D0F14)], begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: summaryAsync.when(
        data: (data) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSummaryItem('Total Value', CurrencyUtils.format(data.cashBalance), isBold: true),
                _buildSummaryItem('Today\'s P&L', '₹0.00', color: AppColors.accentGreen),
              ],
            ),
            const Divider(color: AppColors.border, height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSummaryItem('Available Cash', CurrencyUtils.format(data.cashBalance)),
                _buildSummaryItem('Margin Used', '₹0.00'),
              ],
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Text('Error loading summary'),
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value, {Color? color, bool isBold = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.labelSmall),
        Text(value, style: AppTextStyles.bodyLarge.copyWith(color: color, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
      ],
    );
  }
}
