import '../../../data/datasources/app_database.dart';

class PerformanceStats {
  final double totalPnl;
  final double winRate;
  final double profitFactor;
  final double maxDrawdown;
  final int totalTrades;
  final double avgProfit;
  final double avgLoss;

  PerformanceStats({
    required this.totalPnl,
    required this.winRate,
    required this.profitFactor,
    required this.maxDrawdown,
    required this.totalTrades,
    required this.avgProfit,
    required this.avgLoss,
  });
}

class AnalyticsUtils {
  static PerformanceStats calculate(List<Trade> trades) {
    if (trades.isEmpty) {
      return PerformanceStats(totalPnl: 0, winRate: 0, profitFactor: 0, maxDrawdown: 0, totalTrades: 0, avgProfit: 0, avgLoss: 0);
    }

    double totalPnl = 0;
    int wins = 0;
    double totalProfit = 0;
    double totalLoss = 0;

    for (var t in trades) {
      totalPnl += t.pnl;
      if (t.pnl > 0) {
        wins++;
        totalProfit += t.pnl;
      } else {
        totalLoss += t.pnl.abs();
      }
    }

    final totalTrades = trades.length;
    final winRate = (wins / totalTrades) * 100;
    final profitFactor = totalLoss == 0 ? totalProfit : totalProfit / totalLoss;
    final avgProfit = wins == 0 ? 0.0 : totalProfit / wins;
    final avgLoss = (totalTrades - wins) == 0 ? 0.0 : totalLoss / (totalTrades - wins);

    return PerformanceStats(
      totalPnl: totalPnl,
      winRate: winRate,
      profitFactor: profitFactor,
      maxDrawdown: 0.0, 
      totalTrades: totalTrades,
      avgProfit: avgProfit,
      avgLoss: avgLoss,
    );
  }
}

class TradingInsightsEngine {
  static List<String> getInsights(List<Trade> trades) {
    if (trades.length < 5) return ["Trade more to unlock behavioral insights!"];
    
    List<String> insights = [];
    
    final mondayTrades = trades.where((t) => t.executedAt.weekday == 1).toList();
    final mondayStats = AnalyticsUtils.calculate(mondayTrades);
    if (mondayStats.totalPnl < 0) {
      insights.add("You tend to lose more on Mondays. Consider reducing size.");
    }

    int streak = 0;
    for (var t in trades.reversed) {
      if (t.pnl > 0) streak++; else break;
    }
    if (streak >= 3) {
      insights.add("On a $streak trade winning streak! Maintain discipline.");
    }

    final niftyTrades = trades.where((t) => t.symbol.contains("NIFTY")).toList();
    final niftyStats = AnalyticsUtils.calculate(niftyTrades);
    if (niftyStats.winRate > 70) {
      insights.add("Your NIFTY win rate is exceptional (${niftyStats.winRate.toStringAsFixed(0)}%).");
    }

    return insights.isEmpty ? ["Keep trading with discipline!"] : insights;
  }
}
