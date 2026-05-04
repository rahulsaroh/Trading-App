import 'dart:math';

class MarginCalculator {
  static double calculateRequired(double price, int qty, String instrumentType, {bool useLeverage = false}) {
    if (instrumentType == 'OPTION') {
      return price * qty;
    } else {
      return (price * qty) / (useLeverage ? 5.0 : 1.0);
    }
  }

  static double calculateCharges(double value) {
    if (value == 0) return 0;
    final stt = value * 0.001; 
    final exchangeFees = value * 0.0003; 
    final gst = (exchangeFees) * 0.18; 
    return stt + exchangeFees + gst;
  }
}

class SlippageSimulator {
  static double apply(double price, String side) {
    final random = Random();
    final slippagePct = (random.nextDouble() * 0.0004) + 0.0001;
    final slippage = price * slippagePct;
    
    return side == 'BUY' ? price + slippage : price - slippage;
  }
}
