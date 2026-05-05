import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../market_depth/market_data_providers.dart';
import '../../../../core/utils/market_hours_utils.dart';

class DataFreshnessIndicator extends ConsumerWidget {
  const DataFreshnessIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexAsync = ref.watch(indexQuotesProvider);
    final status = ref.watch(marketStatusProvider);

    return indexAsync.when(
      loading: () => const SizedBox(
        width: 12, height: 12,
        child: CircularProgressIndicator(
          strokeWidth: 2, color: Colors.white54),
      ),
      error: (_,__) => const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.warning_amber, color: Colors.orange, size: 14),
          SizedBox(width: 4),
          Text('Offline', style: TextStyle(color: Colors.orange, fontSize: 11)),
        ],
      ),
      data: (_) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8, height: 8,
            decoration: BoxDecoration(
              color: status == MarketStatus.OPEN 
                  ? const Color(0xFF00C087) : Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            status == MarketStatus.OPEN ? 'LIVE' : 'CLOSED',
            style: TextStyle(
              color: status == MarketStatus.OPEN
                  ? const Color(0xFF00C087) : Colors.orange,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
