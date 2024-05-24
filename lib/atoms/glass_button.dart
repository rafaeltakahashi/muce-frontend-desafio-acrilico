import 'package:acrilico/atoms/glass_pane.dart';
import 'package:flutter/material.dart';

class GlassButton extends StatelessWidget {
  const GlassButton({
    super.key,
    this.tint = Colors.transparent,
    this.blurIntensity = 5,
    this.onPressed,
    required this.child,
  });

  final Function()? onPressed;
  final double blurIntensity;
  final Color tint;
  final Widget child;

  // This is a very improvised implementation that I do not recommend using.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(50, 50)),
          visualDensity: VisualDensity.compact,
        ),
        child: child,
      ).asGlass(
        tintColor: tint,
        blurX: blurIntensity,
        blurY: blurIntensity,
        clipBorderRadius: BorderRadius.circular(23),
      ),
    );
  }
}
