import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/candle.dart';

class NiftyIntradayChart extends StatelessWidget {
  final List<Candle> candles;

  const NiftyIntradayChart({super.key, required this.candles});

  @override
  Widget build(BuildContext context) {
    if (candles.isEmpty) return const SizedBox.shrink();

    final spots = candles.asMap().entries.map((e) {
      return FlSpot(e.key.toDouble(), e.value.close);
    }).toList();

    final isUp = candles.last.close >= candles.first.close;
    final color = isUp ? AppColors.accentGreen : AppColors.accentRed;

    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              color: color,
              barWidth: 2,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [color.withOpacity(0.3), color.withOpacity(0)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
