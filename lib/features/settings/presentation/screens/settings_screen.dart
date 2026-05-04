import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: ListView(
        children: [
          _buildProfileSection(),
          _buildSectionHeader('TRADING PREFERENCES'),
          _buildSettingTile('Default Lot Size', '1 Lot'),
          _buildSettingTile('Slippage Mode', 'Low (0.05%)'),
          _buildSettingTile('Leverage', '5x'),
          _buildSectionHeader('DISPLAY'),
          _buildSettingTile('Chart Type', 'Candlestick'),
          _buildSettingTile('Theme', 'Dark Mode'),
          const SizedBox(height: 40),
          _buildResetButton(context),
          const SizedBox(height: 40),
          _buildFooterInfo(),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const CircleAvatar(radius: 30, backgroundColor: AppColors.surface, child: Icon(Icons.person, color: Colors.white70)),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Elite Trader', style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(color: AppColors.primaryBlue.withOpacity(0.2), borderRadius: BorderRadius.circular(4)),
                child: const Text('EXPERT', style: TextStyle(fontSize: 10, color: AppColors.primaryBlue, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(title, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.primaryBlue.withOpacity(0.8), letterSpacing: 1.2)),
    );
  }

  Widget _buildSettingTile(String title, String value) {
    return ListTile(
      title: Text(title, style: AppTextStyles.bodyMedium),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value, style: AppTextStyles.labelSmall.copyWith(color: AppColors.textSecondary)),
          const SizedBox(width: 8),
          const Icon(Icons.chevron_right, size: 16, color: AppColors.textSecondary),
        ],
      ),
    );
  }

  Widget _buildResetButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: OutlinedButton(
        onPressed: () => _showResetDialog(context),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.accentRed,
          side: const BorderSide(color: AppColors.accentRed),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Text('RESET DEMO ACCOUNT', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildFooterInfo() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text('v1.0.0', style: TextStyle(color: AppColors.textSecondary, fontSize: 10)),
          SizedBox(height: 8),
          Text(
            'For educational purposes only. Not financial advice.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary, fontSize: 10, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  void _showResetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('Reset Portfolio?'),
        content: const Text('This will clear all trades, positions and reset cash to ₹10,00,000.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('RESET', style: TextStyle(color: AppColors.accentRed, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
