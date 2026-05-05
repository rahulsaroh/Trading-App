import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'core/theme/app_theme.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_text_styles.dart';
import 'core/services/price_tick_simulator.dart';
import 'data/datasources/nse_api_client.dart';
import 'features/dashboard/providers/market_providers.dart';
import 'features/dashboard/presentation/screens/dashboard_screen.dart';
import 'features/market_depth/presentation/screens/stock_detail_screen.dart';
import 'features/portfolio/presentation/screens/portfolio_screen.dart';
import 'features/analytics/presentation/screens/analytics_screen.dart';
import 'features/alerts/presentation/screens/alerts_screen.dart';
import 'features/scanner/presentation/screens/market_scanner_screen.dart';
import 'features/settings/presentation/screens/onboarding_screen.dart';
import 'features/settings/presentation/screens/settings_screen.dart';
import 'features/settings/domain/settings_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize settings from SharedPreferences
  final container = ProviderContainer();
  await container.read(tradingSettingsProvider.notifier).init();

  // Initialize Market Data
  final nseClient = NseApiClient();
  await nseClient.initialize();
  
  final marketRepo = container.read(marketDataRepositoryProvider);
  
  try {
    final indexQuotes = await marketRepo.fetchIndexQuotes();
    final seedPrices = <String, double>{};
    for (final entry in indexQuotes.entries) {
      seedPrices[entry.key] = entry.value.ltp;
    }
    
    // Also fetch some Nifty50 stocks for simulation
    final stocks = await marketRepo.fetchNifty50Stocks();
    for (final stock in stocks) {
      seedPrices[stock.symbol] = stock.ltp;
    }
    
    await PriceTickSimulator().seedPrices(seedPrices);
    PriceTickSimulator().startSimulation();
    debugPrint('[Main] Simulator started with ${seedPrices.length} instruments');
  } catch (e) {
    debugPrint('[Main] Data seeding failed: $e');
  }

  if (kDebugMode) {
    debugPrint('========================================');
    debugPrint('TradeDesk initialized - DEBUG MODE');
    debugPrint('Price simulator and order engine active');
    debugPrint('========================================');
  }

  runApp(UncontrolledProviderScope(
    container: container,
    child: const TradeDeskApp(),
  ));
}

final _routerProvider = Provider<GoRouter>((ref) {
  final onboarded = ref.watch(tradingSettingsProvider)['onboarded'] ?? false;

  return GoRouter(
    initialLocation: onboarded ? '/' : '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: '/portfolio',
        builder: (context, state) => const PortfolioScreen(),
      ),
      GoRoute(
        path: '/analytics',
        builder: (context, state) => const AnalyticsScreen(),
      ),
      GoRoute(
        path: '/alerts',
        builder: (context, state) => const AlertsScreen(),
      ),
      GoRoute(
        path: '/scanner',
        builder: (context, state) => const MarketScannerScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/market-depth/:symbol',
        builder: (context, state) {
          final symbol = state.pathParameters['symbol']!;
          return StockDetailScreen(symbol: symbol);
        },
      ),
    ],
  );
});

class TradeDeskApp extends ConsumerWidget {
  const TradeDeskApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(_routerProvider);
    
    return MaterialApp.router(
      title: 'TradeDesk',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: router,
    );
  }
}

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      final onboarded = ref.read(tradingSettingsProvider)['onboarded'] ?? false;
      context.go(onboarded ? '/' : '/onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.rocket_launch, size: 80, color: AppColors.primaryBlue),
            const SizedBox(height: 24),
            Text('TRADEDESK', style: AppTextStyles.displayLarge.copyWith(letterSpacing: 4)),
            const SizedBox(height: 8),
            Text('Trade Like a Pro. Risk Nothing.', style: AppTextStyles.labelSmall),
          ],
        ),
      ),
    );
  }
}
