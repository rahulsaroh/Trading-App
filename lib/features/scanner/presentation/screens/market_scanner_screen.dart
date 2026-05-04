import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class MarketScannerScreen extends StatelessWidget {
  const MarketScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text('Market Scanners'),
          backgroundColor: AppColors.background,
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: AppColors.primaryBlue,
            labelColor: AppColors.primaryBlue,
            unselectedLabelColor: AppColors.textSecondary,
            tabs: [
              Tab(text: 'OI SURGE'),
              Tab(text: 'TOP MOVERS'),
              Tab(text: 'HIGH IV'),
              Tab(text: '52W HIGH/LOW'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _ScannerResultsList(type: 'OI_SURGE'),
            _ScannerResultsList(type: 'TOP_MOVERS'),
            _ScannerResultsList(type: 'HIGH_IV'),
            _ScannerResultsList(type: '52W_H_L'),
          ],
        ),
      ),
    );
  }
}

class _ScannerResultsList extends StatelessWidget {
  final String type;
  const _ScannerResultsList({required this.type});

  @override
  Widget build(BuildContext context) {
    final results = [
      {'symbol': 'NIFTY 24500 CE', 'value': '+18.5% OI', 'color': AppColors.accentGreen},
      {'symbol': 'RELIANCE', 'value': 'Near 52W High', 'color': Colors.orange},
      {'symbol': 'BANKNIFTY 52000 PE', 'value': '24.2 IV', 'color': AppColors.accentRed},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final r = results[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(r['symbol'] as String, style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
                  Text('NSE • F&O', style: AppTextStyles.labelSmall),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: (r['color'] as Color).withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                child: Text(r['value'] as String, style: TextStyle(color: r['color'] as Color, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        );
      },
    );
  }
}
