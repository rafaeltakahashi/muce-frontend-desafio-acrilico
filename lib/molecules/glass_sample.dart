import 'package:acrilico/atoms/glass_square.dart';
import 'package:flutter/material.dart';

/// One item in the glass gallery. It shows a square glass pane and a
/// label.
class GlassSample extends StatelessWidget {
  const GlassSample({
    super.key,
    required this.tint,
    required this.blurSize,
    required this.opacity,
  });

  final Color tint;
  final double blurSize;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    // Get the color's integer value, which represents alpha, red, green
    // and blue in the format 0xffrrggbb. Then, modulus with ff000000
    // and format as hexadecimal.
    // Add the blur size and the opacity to get a label that says something
    // like "#808080 50%, 10 blur"
    var labelText =
        "#${(tint.value % 16711680).toRadixString(16)}\n${opacity * 100}%\n$blurSize blur";

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GlassSquare(
          sideLength: 150,
          tint: tint.withOpacity(opacity),
          blurSize: blurSize,
          opacity: opacity,
        ),
        const SizedBox(
          height: 15,
        ),
        Chip(label: Text(labelText, maxLines: 3)),
      ],
    );
  }
}
