import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../data/datasources/app_database.dart';
import '../../../market_depth/market_data_providers.dart';

class WatchlistItemRow extends ConsumerWidget {
  final WatchlistItem item;
  final VoidCallback onDelete;

  const WatchlistItemRow({
    super.key,
    required this.item,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quoteAsync = ref.watch(stockQuoteProvider(item.symbol));

    return Dismissible(
      key: Key(item.id.toString()),
      background: _buildActionBackground(Alignment.centerLeft, AppColors.accentGreen, 'BUY'),
      secondaryBackground: _buildActionBackground(Alignment.centerRight, AppColors.accentRed, 'SELL'),
      onDismissed: (direction) {
        // Trade action triggered
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: const BoxDecoration(
          color: AppColors.background,
          border: Border(bottom: BorderSide(color: AppColors.border, width: 0.5)),
        ),
        child: Row(
          children: [
            _buildLogo(item.symbol),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.symbol, style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
                  Text(item.name, style: AppTextStyles.labelSmall, maxLines: 1, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            quoteAsync.when(
              data: (quote) => _buildPriceInfo(quote.ltp, quote.change, quote.changePct),
              loading: () => const SizedBox(width: 80, height: 20, child: LinearProgressIndicator(color: AppColors.border)),
              error: (_, _) => const Icon(Icons.error_outline, color: AppColors.accentRed, size: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(String symbol) {
    final char = symbol.isNotEmpty ? symbol[0] : '?';
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.blueGrey.withOpacity(0.2),
      child: Text(char, style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildPriceInfo(double ltp, double change, double changePct) {
    final isUp = change >= 0;
    final color = isUp ? AppColors.accentGreen : AppColors.accentRed;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(ltp.toStringAsFixed(2), style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '${isUp ? "+" : ""}${change.toStringAsFixed(2)} (${changePct.toStringAsFixed(2)}%)',
            style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildActionBackground(Alignment alignment, Color color, String label) {
    return Container(
      alignment: alignment,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: color,
      child: Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
