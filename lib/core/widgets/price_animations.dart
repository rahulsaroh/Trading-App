import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class PriceBlinkAnimation extends StatefulWidget {
  final double price;
  final Widget child;

  const PriceBlinkAnimation({super.key, required this.price, required this.child});

  @override
  State<PriceBlinkAnimation> createState() => _PriceBlinkAnimationState();
}

class _PriceBlinkAnimationState extends State<PriceBlinkAnimation> {
  Color _blinkColor = Colors.transparent;

  @override
  void didUpdateWidget(PriceBlinkAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.price != oldWidget.price) {
      setState(() {
        _blinkColor = widget.price > oldWidget.price 
            ? AppColors.accentGreen.withOpacity(0.1) 
            : AppColors.accentRed.withOpacity(0.1);
      });
      Future.delayed(const Duration(milliseconds: 200), () {
        if (mounted) setState(() => _blinkColor = Colors.transparent);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: _blinkColor,
      child: widget.child,
    );
  }
}

class AnimatedPriceTicker extends StatelessWidget {
  final double price;
  final TextStyle style;

  const AnimatedPriceTicker({super.key, required this.price, required this.style});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: price, end: price),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(value.toStringAsFixed(2), style: style);
      },
    );
  }
}
