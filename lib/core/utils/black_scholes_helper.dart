import 'dart:math';

class BlackScholesHelper {
  static double calculateOptionPrice({
    required double spot,
    required double strike,
    required double t, 
    required double r, 
    required double v, 
    required bool isCall,
  }) {
    if (t <= 0) return max(0, isCall ? spot - strike : strike - spot);
    
    final d1 = (log(spot / strike) + (r + v * v / 2) * t) / (v * sqrt(t));
    final d2 = d1 - v * sqrt(t);

    if (isCall) {
      return spot * _cnd(d1) - strike * exp(-r * t) * _cnd(d2);
    } else {
      return strike * exp(-r * t) * _cnd(-d2) - spot * _cnd(-d1);
    }
  }

  static double _cnd(double x) {
    const a1 = 0.31938153;
    const a2 = -0.356563782;
    const a3 = 1.781477937;
    const a4 = -1.821255978;
    const a5 = 1.330274429;
    final l = x.abs();
    final k = 1.0 / (1.0 + 0.2316419 * l);
    var w = 1.0 - 1.0 / sqrt(2 * pi) * exp(-l * l / 2) * (a1 * k + a2 * k * k + a3 * pow(k, 3) + a4 * pow(k, 4) + a5 * pow(k, 5));
    if (x < 0) w = 1.0 - w;
    return w;
  }
}
