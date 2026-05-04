import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_providers.g.dart';

@Riverpod(keepAlive: true)
class TradingSettings extends _$TradingSettings {
  static const String keyLotSize = 'pref_lot_size';
  static const String keySlippage = 'pref_slippage';
  static const String keyLeverage = 'pref_leverage';
  static const String keyOnboarded = 'pref_onboarded';

  @override
  Map<String, dynamic> build() {
    return {
      'lotSize': 1,
      'slippage': 'Low (0.05%)',
      'leverage': '5x',
      'onboarded': false,
    };
  }

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    state = {
      'lotSize': prefs.getInt(keyLotSize) ?? 1,
      'slippage': prefs.getString(keySlippage) ?? 'Low (0.05%)',
      'leverage': prefs.getString(keyLeverage) ?? '5x',
      'onboarded': prefs.getBool(keyOnboarded) ?? false,
    };
  }

  Future<void> setOnboarded() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyOnboarded, true);
    state = {...state, 'onboarded': true};
  }
}
