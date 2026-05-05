// Copyright 2024 TradeDesk. All rights reserved.
// Automated unit tests for Black-Scholes options pricing

import 'dart:math';
import 'package:flutter_test/flutter_test.dart';
import 'package:tradedesk/core/utils/option_math_utils.dart';

void main() {
  group('Black-Scholes Option Pricing', () {
    test('Call option price > 0 for ITM option', () {
      // ITM call: spot=26000, strike=25000, high delta
      final spot = 26000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365; // 30 days
      final volatility = 0.25; // 25% IV
      final riskFreeRate = 0.10; // 10%

      final callPrice = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(callPrice, greaterThan(0));
      expect(callPrice, lessThan(spot)); // Call price < spot
    });

    test('Put option price > 0 for ITM option', () {
      // ITM put: spot=24000, strike=25000
      final spot = 24000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final putPrice = BlackScholesCalculator.putPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(putPrice, greaterThan(0));
      // ITM put should be reasonably priced
      expect(putPrice, greaterThanOrEqualTo(strike - spot - 100));
    });

    test('Delta range for call options: 0 < delta < 1', () {
      final spot = 26000.0;
      final strike = 25000.0; // ITM call -> delta ~ 0.7-0.8
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final delta = BlackScholesCalculator.deltaCall(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(delta, greaterThan(0));
      expect(delta, lessThan(1));
    });

    test('Delta range for put options: -1 < delta < 0', () {
      final spot = 24000.0;
      final strike = 25000.0; // ITM put -> delta ~ -0.7
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final delta = BlackScholesCalculator.deltaPut(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(delta, lessThan(0));
      expect(delta, greaterThan(-1));
    });

    test('Delta + (1-delta_put) ≈ 1 (put-call parity)', () {
      final spot = 25000.0;
      final strike = 25000.0; // ATM
      final timeToExpiry = 7 / 365; // 1 week
      final volatility = 0.20;
      final riskFreeRate = 0.10;

      final callDelta = BlackScholesCalculator.deltaCall(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      final putDelta = BlackScholesCalculator.deltaPut(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      // For European options: CallDelta - PutDelta ≈ exp(-rT) ≈ 0.998 for 7 days
      // Simplified: CallDelta + (1 - PutDelta) should be ~ 1
      final sum = callDelta + (1 - putDelta);
      expect(sum, closeTo(1.0, 0.001));
    });

    test('Time decay: option loses value as expiry approaches', () {
      final spot = 26000.0;
      final strike = 25000.0;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      // Price with 30 days
      final price30 = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: 30 / 365,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      // Price with 10 days (should be lower due to less time value)
      final price10 = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: 10 / 365,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      // As time decreases (all else equal), time value decreases → option price decreases for ITM/OTM? Actually ITM may increase or decrease depending on intrinsic vs time value. For ITM, time decay slower but still decays.
      // For ITM call, option price may INCREASE as expiry approaches if deeply ITM (intrinsic dominates), but generally time value decays.
      // This test might be tricky. Let's test with OTM call where time value is majority.

      final otmStrike = 27000.0;
      final otmPrice30 = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: otmStrike,
        timeToExpiry: 30 / 365,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );
      final otmPrice10 = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: otmStrike,
        timeToExpiry: 10 / 365,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      // OTM option should lose time value -> price decreases
      expect(otmPrice10, lessThan(otmPrice30));
    });

    test('ATM option price roughly equals 0.4 × IV × √(T) × spot (approx)', () {
      // Approx formula for ATM forward: C ≈ 0.4 × σ × √T × F
      final spot = 25000.0;
      final strike = 25000.0; // ATM
      final volatility = 0.20; // 20% IV
      final timeToExpiry = 30 / 365;
      final riskFreeRate = 0.10;

      final actualPrice = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      final forwardPrice = spot * (1 + riskFreeRate * timeToExpiry);
      final approxPrice = 0.4 * volatility * sqrt(timeToExpiry) * forwardPrice;

      // Should be within 30% (rough approximation)
      expect(actualPrice, closeTo(approxPrice, approxPrice * 0.3));
    });

    test('Gamma is positive for both calls and puts', () {
      final spot = 26000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final gamma = BlackScholesCalculator.gamma(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(gamma, greaterThan(0));
    });

    test('Vega is positive (option value increases with IV)', () {
      final spot = 26000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final vega = BlackScholesCalculator.vega(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(vega, greaterThan(0));
    });

    test('Theta is negative (option loses value over time)', () {
      final spot = 26000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final theta = BlackScholesCalculator.theta(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      // Theta is usually negative for both calls and puts (except deep ITM puts sometimes)
      expect(theta, lessThanOrEqualTo(0));
    });

    test('Rho is positive for calls', () {
      final spot = 26000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365;
      final volatility = 0.25;
      final riskFreeRate = 0.10;

      final rho = BlackScholesCalculator.rhoCall(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      expect(rho, greaterThan(0)); // Call value increases with rates
    });

    test('Put-call parity holds for ATM options', () {
      final spot = 25000.0;
      final strike = 25000.0;
      final timeToExpiry = 7 / 365;
      final volatility = 0.20;
      final riskFreeRate = 0.10;

      final call = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      final put = BlackScholesCalculator.putPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: volatility,
        riskFreeRate: riskFreeRate,
      );

      // Put-Call Parity: C - P = S - K*exp(-rT)
      final lhs = call - put;
      final rhs = spot - strike * (1 - riskFreeRate * timeToExpiry); // Simplified
      expect(lhs, closeTo(rhs, 10.0)); // Within 10 rupees
    });
  });

  group('Implied Volatility', () {
    test('Can recover IV from market price (inverse)', () {
      // Use known market price to back out IV
      final spot = 26000.0;
      final strike = 25000.0;
      final timeToExpiry = 30 / 365;
      final riskFreeRate = 0.10;

      // First compute price at known IV
      final knownIv = 0.25;
      final marketPrice = BlackScholesCalculator.callPrice(
        spot: spot,
        strike: strike,
        timeToExpiry: timeToExpiry,
        volatility: knownIv,
        riskFreeRate: riskFreeRate,
      );

      // Then use ivFromPrice to recover (if implemented)
      // This test depends on whether ivFromPrice exists
      // Skip if not implemented
    }, skip: 'Requires ivFromPrice implementation');
  });
}
