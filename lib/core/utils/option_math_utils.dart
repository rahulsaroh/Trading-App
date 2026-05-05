import 'dart:math';
import '../../data/models/option_chain.dart';

class BlackScholesCalculator {
  static double callPrice({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return max(0.0, spot - strike);
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    final d2 = d1 - volatility * sqrt(timeToExpiry);
    return spot * _cnd(d1) - strike * exp(-riskFreeRate * timeToExpiry) * _cnd(d2);
  }

  static double putPrice({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return max(0.0, strike - spot);
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    final d2 = d1 - volatility * sqrt(timeToExpiry);
    return strike * exp(-riskFreeRate * timeToExpiry) * _cnd(-d2) - spot * _cnd(-d1);
  }

  static double deltaCall({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return spot > strike ? 1.0 : 0.0;
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    return _cnd(d1);
  }

  static double deltaPut({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return spot < strike ? -1.0 : 0.0;
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    return _cnd(d1) - 1;
  }

  static double gamma({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return 0.0;
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    return exp(-d1 * d1 / 2) / (spot * volatility * sqrt(2 * pi * timeToExpiry));
  }

  static double vega({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return 0.0;
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    return spot * sqrt(timeToExpiry) * exp(-d1 * d1 / 2) / sqrt(2 * pi);
  }

  static double theta({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return 0.0;
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    final d2 = d1 - volatility * sqrt(timeToExpiry);
    
    // Simplified Theta for Call (European)
    final term1 = -(spot * exp(-d1 * d1 / 2) * volatility) / (2 * sqrt(2 * pi * timeToExpiry));
    final term2 = riskFreeRate * strike * exp(-riskFreeRate * timeToExpiry) * _cnd(d2);
    return term1 - term2;
  }

  static double rhoCall({
    required double spot,
    required double strike,
    required double timeToExpiry,
    required double riskFreeRate,
    required double volatility,
  }) {
    if (timeToExpiry <= 0) return 0.0;
    final d1 = (log(spot / strike) + (riskFreeRate + volatility * volatility / 2) * timeToExpiry) / (volatility * sqrt(timeToExpiry));
    final d2 = d1 - volatility * sqrt(timeToExpiry);
    return strike * timeToExpiry * exp(-riskFreeRate * timeToExpiry) * _cnd(d2);
  }

  static double _cnd(double x) {
    const a1 = 0.31938153;
    const a2 = -0.356563782;
    const a3 = 1.781477937;
    const a4 = -1.821255978;
    const a5 = 1.330274429;
    final l = x.abs();
    final k = 1.0 / (1.0 + 0.2316419 * l);
    var w = 1.0 - 1.0 / sqrt(2.0 * pi) * exp(-l * l / 2.0) * (a1 * k + a2 * k * k + a3 * pow(k, 3) + a4 * pow(k, 4) + a5 * pow(k, 5));
    if (x < 0) w = 1.0 - w;
    return w;
  }
}

class OptionMathUtils {
  static double calculatePCR(List<OptionContract> calls, List<OptionContract> puts) {
    final totalCallOI = calls.fold<int>(0, (sum, item) => sum + (item.oi ?? 0));
    final totalPutOI = puts.fold<int>(0, (sum, item) => sum + (item.oi ?? 0));
    if (totalCallOI == 0) return 0.0;
    return totalPutOI / totalCallOI;
  }

  static double calculateMaxPain(OptionChain chain) {
    double minPain = double.infinity;
    double maxPainStrike = chain.strikePrices.first;

    for (final targetStrike in chain.strikePrices) {
      double totalPain = 0.0;
      
      for (int i = 0; i < chain.strikePrices.length; i++) {
        final strike = chain.strikePrices[i];
        final call = chain.calls[i];
        final put = chain.puts[i];

        if (strike < targetStrike) {
          totalPain += (targetStrike - strike) * (call.oi ?? 0);
        }
        if (strike > targetStrike) {
          totalPain += (strike - targetStrike) * (put.oi ?? 0);
        }
      }

      if (totalPain < minPain) {
        minPain = totalPain;
        maxPainStrike = targetStrike;
      }
    }
    return maxPainStrike;
  }
}
