import '../../data/models/option_chain.dart';

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
