import 'package:acrilico/atoms/glass_pane.dart';
import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({
    super.key,
    this.tint = Colors.transparent,
    this.borderColor = Colors.white,
    required this.child,
    this.borderRadius = 15.0,
  });

  final Color tint;
  final Color borderColor;
  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
      ),
      child: child,
    ).asGlass(
      tintColor: tint,
      clipBorderRadius: BorderRadius.circular(borderRadius),
    );
  }
}
