import 'package:acrilico/atoms/glass_pane.dart';
import 'package:flutter/material.dart';

/// A square that looks like it's made of frosted glass.
class GlassSquare extends StatelessWidget {
  const GlassSquare({
    super.key,
    required this.sideLength,
    required this.tint,
    this.blurSize = 10.0,
  });

  final double sideLength;
  final Color tint;
  final double blurSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sideLength,
      height: sideLength,
    ).asGlass(
      tintColor: tint,
      blurX: blurSize,
      blurY: blurSize,
    );
  }
}
