import 'package:acrilico/atoms/glass_card.dart';
import 'package:flutter/material.dart';

class GlassLoginButton extends StatelessWidget {
  const GlassLoginButton({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GlassCard(
        tint: Colors.white.withAlpha(160),
        borderColor: Colors.white.withAlpha(230),
        borderRadius: 8.0,
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 215,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.center,
                widthFactor: 1,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
