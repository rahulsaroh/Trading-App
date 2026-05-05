import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../domain/settings_providers.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final TextEditingController _nameController = TextEditingController();
  String _experience = 'Beginner';

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (idx) => setState(() => _currentPage = idx),
            children: [
              _buildPage('Welcome', 'Trade Like a Pro. Risk Nothing.', Icons.rocket_launch),
              _buildPage('₹10,00,000', 'Virtual money for real practice.', Icons.currency_rupee),
              _buildPage('Real Data', 'NSE live prices, zero latency.', Icons.show_chart),
              _buildPage('Track Growth', 'Advanced analytics for every trade.', Icons.insights),
              _buildSetupPage(),
            ],
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String sub, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 100, color: AppColors.primaryBlue),
          const SizedBox(height: 40),
          Text(title, style: AppTextStyles.displayLarge),
          const SizedBox(height: 16),
          Text(sub, textAlign: TextAlign.center, style: AppTextStyles.bodyLarge.copyWith(color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildSetupPage() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Profile', style: AppTextStyles.displayLarge),
          const SizedBox(height: 32),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Enter Name',
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.border)),
            ),
          ),
          const SizedBox(height: 24),
          Text('Experience Level', style: AppTextStyles.bodyMedium),
          const SizedBox(height: 16),
          _buildExperienceChips(),
        ],
      ),
    );
  }

  Widget _buildExperienceChips() {
    return Wrap(
      spacing: 12,
      children: ['Beginner', 'Intermediate', 'Expert'].map((level) => ActionChip(
        label: Text(level, style: const TextStyle(fontSize: 12)),
        onPressed: () => setState(() => _experience = level),
        backgroundColor: _experience == level ? AppColors.primaryBlue : AppColors.surface,
      )).toList(),
    );
  }

  Widget _buildFooter() {
    return Positioned(
      bottom: 50,
      left: 20,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => _finish(),
            child: const Text('SKIP', style: TextStyle(color: AppColors.textSecondary)),
          ),
          _currentPage == 4
            ? ElevatedButton(
                onPressed: () => _finish(),
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBlue),
                child: const Text('GET STARTED', style: TextStyle(color: Colors.white)),
              )
            : IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: AppColors.primaryBlue),
                onPressed: () => _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease),
              ),
        ],
      ),
    );
  }

  Future<void> _finish() async {
    final name = _nameController.text.trim().isEmpty ? 'Trader' : _nameController.text.trim();
    // Save both name and experience, and mark onboarded
    // For simplicity, we'll store in SharedPreferences directly or extend TradingSettings
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('trader_name', name);
    await prefs.setString('experience_level', _experience);
    await ref.read(tradingSettingsProvider.notifier).setOnboarded();
    if (mounted) context.go('/');
  }
}
