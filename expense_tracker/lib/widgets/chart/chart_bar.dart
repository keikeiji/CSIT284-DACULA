import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({
    super.key,
    required this.fill,
  });

  final double fill;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: FractionallySizedBox(
          heightFactor: fill,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              color: const Color(0xFF6B1E2B),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFC9A66B).withValues(alpha: 0.18),
                  blurRadius: 4,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}