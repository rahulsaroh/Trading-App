import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/currency_utils.dart';

class PortfolioSummaryCard extends StatelessWidget {
  final double totalValue;
  final double dayPnL;
  final double dayPnLPct;
  final double investedValue;

  const PortfolioSummaryCard({
    super.key,
    required this.totalValue,
    required this.dayPnL,
    required this.dayPnLPct,
    required this.investedValue,
  });

  @override
  Widget build(BuildContext context) {
    final isProfit = dayPnL >= 0;
    
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Value', style: AppTextStyles.labelSmall),
                  const SizedBox(height: 4),
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: totalValue),
                    duration: const Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Text(
                        CurrencyUtils.format(value),
                        style: AppTextStyles.displayLarge.copyWith(fontSize: 28),
                      );
                    },
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: (isProfit ? AppColors.accentGreen : AppColors.accentRed).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      isProfit ? Icons.arrow_upward : Icons.arrow_downward,
                      color: isProfit ? AppColors.accentGreen : AppColors.accentRed,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${dayPnLPct.toStringAsFixed(2)}%',
                      style: TextStyle(
                        color: isProfit ? AppColors.accentGreen : AppColors.accentRed,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Divider(color: AppColors.border, height: 1),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildValueItem('Invested', CurrencyUtils.format(investedValue)),
              _buildValueItem(
                'Day P&L', 
                '${isProfit ? "+" : ""}${CurrencyUtils.format(dayPnL)}',
                color: isProfit ? AppColors.accentGreen : AppColors.accentRed,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildValueItem(String label, String value, {Color? color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.labelSmall),
        const SizedBox(height: 4),
        Text(
          value,
          style: AppTextStyles.bodyLarge.copyWith(
            fontWeight: FontWeight.bold,
            color: color ?? AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
