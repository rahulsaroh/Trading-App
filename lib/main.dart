import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'core/theme/app_theme.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_text_styles.dart';
import 'data/datasources/price_tick_simulator.dart';
import 'features/dashboard/presentation/screens/dashboard_screen.dart';
import 'features/market_depth/presentation/screens/stock_detail_screen.dart';
import 'features/portfolio/presentation/screens/portfolio_screen.dart';
import 'features/analytics/presentation/screens/analytics_screen.dart';
import 'features/alerts/presentation/screens/alerts_screen.dart';
import 'features/scanner/presentation/screens/market_scanner_screen.dart';
import 'features/settings/presentation/screens/onboarding_screen.dart';
import 'features/settings/presentation/screens/settings_screen.dart';

// Global Price Stream
final priceSimulatorProvider = Provider((ref) => PriceTickSimulator());
final priceStreamProvider = StreamProvider<TickData>((ref) {
  final simulator = ref.watch(priceSimulatorProvider);
  return simulator.tickStream;
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: TradeDeskApp()));
}

final _routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
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
    ref.read(priceSimulatorProvider).start({
      'NIFTY 50': 24500.0,
      'RELIANCE': 2950.0,
      'HDFCBANK': 1650.0,
    });
    
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) context.go('/onboarding');
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
