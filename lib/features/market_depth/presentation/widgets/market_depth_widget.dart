import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import 'dart:math';

class MarketDepthWidget extends StatelessWidget {
  final double ltp;

  const MarketDepthWidget({super.key, required this.ltp});

  @override
  Widget build(BuildContext context) {
    final bids = List.generate(5, (i) => _generateOrder(ltp, -(i + 1) * 0.05));
    final asks = List.generate(5, (i) => _generateOrder(ltp, (i + 1) * 0.05));

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Market Depth', style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDepthHeader('Bid Price', 'Qty')),
              const SizedBox(width: 20),
              Expanded(child: _buildDepthHeader('Ask Price', 'Qty')),
            ],
          ),
          const Divider(color: AppColors.border),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: _buildOrderList(bids, AppColors.accentGreen)),
              const SizedBox(width: 20),
              Expanded(child: _buildOrderList(asks, AppColors.accentRed)),
            ],
          ),
          const SizedBox(height: 16),
          _buildTotalVolumeBar(125000, 108000),
        ],
      ),
    );
  }

  Map<String, double> _generateOrder(double price, double offset) {
    return {
      'price': price + offset,
      'qty': (Random().nextInt(500) + 100).toDouble(),
    };
  }

  Widget _buildDepthHeader(String label1, String label2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label1, style: AppTextStyles.labelSmall),
        Text(label2, style: AppTextStyles.labelSmall),
      ],
    );
  }

  Widget _buildOrderList(List<Map<String, double>> orders, Color color) {
    return Column(
      children: orders.map((o) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(o['price']!.toStringAsFixed(2), style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w500)),
            Text(o['qty']!.toInt().toString(), style: const TextStyle(color: AppColors.textPrimary, fontSize: 12)),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildTotalVolumeBar(int totalBid, int totalAsk) {
    final total = totalBid + totalAsk;
    final bidPct = totalBid / total;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(totalBid.toString(), style: const TextStyle(color: AppColors.accentGreen, fontSize: 10)),
            Text(totalAsk.toString(), style: const TextStyle(color: AppColors.accentRed, fontSize: 10)),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: LinearProgressIndicator(
            value: bidPct,
            backgroundColor: AppColors.accentRed,
            color: AppColors.accentGreen,
            minHeight: 4,
          ),
        ),
      ],
    );
  }
}
