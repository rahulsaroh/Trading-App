import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/utils/currency_utils.dart';
import '../../domain/order_execution_engine.dart';
import '../../domain/trade_utils.dart';

class OrderPlacementBottomSheet extends ConsumerStatefulWidget {
  final String symbol;
  final String side; 
  final double ltp;

  const OrderPlacementBottomSheet({
    super.key,
    required this.symbol,
    required this.side,
    required this.ltp,
  });

  @override
  ConsumerState<OrderPlacementBottomSheet> createState() => _OrderPlacementBottomSheetState();
}

class _OrderPlacementBottomSheetState extends ConsumerState<OrderPlacementBottomSheet> {
  int _lots = 1;
  final int _lotSize = 50; 
  String _orderType = 'MARKET';

  @override
  Widget build(BuildContext context) {
    final qty = _lots * _lotSize;
    final marginRequired = MarginCalculator.calculateRequired(widget.ltp, qty, 'STOCK');
    final isBuy = widget.side == 'BUY';
    final accentColor = isBuy ? AppColors.accentGreen : AppColors.accentRed;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(accentColor),
          const SizedBox(height: 24),
          _buildOrderTypeTabs(),
          const SizedBox(height: 24),
          _buildQuantitySelector(),
          const SizedBox(height: 24),
          _buildSummary(marginRequired),
          const SizedBox(height: 24),
          _buildConfirmButton(accentColor, qty),
        ],
      ),
    );
  }

  Widget _buildHeader(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.symbol, style: AppTextStyles.headlineMedium),
            Text('NSE • EQUITY', style: AppTextStyles.labelSmall),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(CurrencyUtils.format(widget.ltp), style: AppTextStyles.headlineMedium.copyWith(color: color)),
            Text('LTP', style: AppTextStyles.labelSmall),
          ],
        ),
      ],
    );
  }

  Widget _buildOrderTypeTabs() {
    return Row(
      children: ['MARKET', 'LIMIT', 'SL', 'SL-M'].map((type) => Expanded(
        child: GestureDetector(
          onTap: () => setState(() => _orderType = type),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: _orderType == type ? AppColors.primaryBlue : Colors.transparent, width: 2)),
            ),
            child: Center(child: Text(type, style: TextStyle(color: _orderType == type ? AppColors.primaryBlue : AppColors.textSecondary, fontSize: 12, fontWeight: FontWeight.bold))),
          ),
        ),
      )).toList(),
    );
  }

  Widget _buildQuantitySelector() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LOTS', style: AppTextStyles.labelSmall),
              const SizedBox(height: 8),
              Row(
                children: [
                  _qtyButton(Icons.remove, () => setState(() => _lots = max(1, _lots - 1))),
                  const SizedBox(width: 16),
                  Text('$_lots', style: AppTextStyles.headlineMedium),
                  const SizedBox(width: 16),
                  _qtyButton(Icons.add, () => setState(() => _lots++)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('TOTAL QTY', style: AppTextStyles.labelSmall),
              const SizedBox(height: 8),
              Text('${_lots * _lotSize}', style: AppTextStyles.headlineMedium),
            ],
          ),
        ),
      ],
    );
  }

  Widget _qtyButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(8)),
        child: Icon(icon, size: 16),
      ),
    );
  }

  Widget _buildSummary(double margin) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MARGIN REQUIRED', style: AppTextStyles.labelSmall),
            Text(CurrencyUtils.format(margin), style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('AVAILABLE', style: AppTextStyles.labelSmall),
            Text(CurrencyUtils.format(1000000.0), style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildConfirmButton(Color color, int qty) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          HapticFeedback.heavyImpact();
          final success = await ref.read(orderExecutionEngineProvider.notifier).executeMarketOrder(
            symbol: widget.symbol,
            side: widget.side,
            quantity: qty,
            ltp: widget.ltp,
            instrumentType: 'STOCK',
          );
          if (success && mounted) Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(backgroundColor: color, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        child: Text('${widget.side} $qty AT MARKET', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
