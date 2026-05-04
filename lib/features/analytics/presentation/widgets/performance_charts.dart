import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../data/datasources/app_database.dart';

class EquityCurveChart extends StatelessWidget {
  final List<Trade> trades;

  const EquityCurveChart({super.key, required this.trades});

  @override
  Widget build(BuildContext context) {
    double balance = 1000000;
    final spots = <FlSpot>[FlSpot(0, balance)];
    
    for (int i = 0; i < trades.length; i++) {
      balance += trades[i].pnl;
      spots.add(FlSpot((i + 1).toDouble(), balance));
    }

    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              color: AppColors.primaryBlue,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: true, color: AppColors.primaryBlue.withOpacity(0.1)),
            ),
          ],
        ),
      ),
    );
  }
}

class DailyPnlBarChart extends StatelessWidget {
  final List<Trade> trades;

  const DailyPnlBarChart({super.key, required this.trades});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(16),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          barGroups: trades.take(10).map((t) => BarChartGroupData(
            x: t.executedAt.day,
            barRods: [
              BarChartRodData(
                toY: t.pnl,
                color: t.pnl >= 0 ? AppColors.accentGreen : AppColors.accentRed,
                width: 12,
                borderRadius: BorderRadius.circular(2),
              ),
            ],
          )).toList(),
          titlesData: const FlTitlesData(show: false),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }
}
