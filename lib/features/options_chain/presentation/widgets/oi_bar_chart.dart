import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/option_chain.dart';

class OIBarChart extends StatelessWidget {
  final OptionChain chain;

  const OIBarChart({super.key, required this.chain});

  @override
  Widget build(BuildContext context) {
    final atm = chain.underlyingValue;
    final filteredStrikes = chain.strikePrices
        .where((s) => (s - atm).abs() < (atm * 0.02))
        .take(10)
        .toList();

    return Container(
      height: 250,
      padding: const EdgeInsets.all(16),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: _getMaxOI(chain),
          barGroups: filteredStrikes.map((s) {
            final idx = chain.strikePrices.indexOf(s);
            return BarChartGroupData(
              x: s.toInt(),
              barRods: [
                BarChartRodData(toY: chain.calls[idx].oi?.toDouble() ?? 0, color: AppColors.accentGreen, width: 8),
                BarChartRodData(toY: chain.puts[idx].oi?.toDouble() ?? 0, color: AppColors.accentRed, width: 8),
              ],
            );
          }).toList(),
          titlesData: const FlTitlesData(show: false),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }

  double _getMaxOI(OptionChain chain) {
    double max = 0;
    for (var c in chain.calls) if ((c.oi ?? 0) > max) max = c.oi!.toDouble();
    for (var p in chain.puts) if ((p.oi ?? 0) > max) max = p.oi!.toDouble();
    return max * 1.1;
  }
}
