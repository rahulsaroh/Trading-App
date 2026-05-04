import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/candle.dart';

class PriceChartWidget extends StatelessWidget {
  final List<Candle> data;
  final bool isLineChart;

  const PriceChartWidget({super.key, required this.data, this.isLineChart = true});

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) return const Center(child: CircularProgressIndicator());

    final color = data.last.close >= data.first.close ? AppColors.accentGreen : AppColors.accentRed;
    
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: data.asMap().entries.map((e) => FlSpot(e.key.toDouble(), e.value.close)).toList(),
              isCurved: true,
              color: color,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: color.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
