import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.surface.withOpacity(0.8),
            border: const Border(top: BorderSide(color: AppColors.border, width: 0.5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, Icons.home_filled, 'Home'),
              _buildNavItem(1, Icons.list_alt_rounded, 'Watchlist'),
              _buildCenterButton(),
              _buildNavItem(3, Icons.pie_chart_outline_rounded, 'Portfolio'),
              _buildNavItem(4, Icons.analytics_outlined, 'Analytics'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = currentIndex == index;
    return InkWell(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColors.primaryBlue : AppColors.textSecondary,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: isSelected ? AppColors.primaryBlue : AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCenterButton() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: AppColors.primaryBlue,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: AppColors.primaryBlue, blurRadius: 10, spreadRadius: -2)],
      ),
      child: const Icon(Icons.swap_vert_rounded, color: Colors.white, size: 28),
    );
  }
}
