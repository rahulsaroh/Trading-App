import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class IndexPulseCard extends StatelessWidget {
  final String name;
  final double value;
  final double change;
  final double changePct;

  const IndexPulseCard({
    super.key,
    required this.name,
    required this.value,
    required this.change,
    required this.changePct,
  });

  @override
  Widget build(BuildContext context) {
    final isUp = change >= 0;
    final color = isUp ? AppColors.accentGreen : AppColors.accentRed;

    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: AppTextStyles.labelSmall.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(value.toStringAsFixed(2), style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(
            '${isUp ? "+" : ""}${change.toStringAsFixed(2)} (${changePct.toStringAsFixed(2)}%)',
            style: AppTextStyles.labelSmall.copyWith(color: color, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
