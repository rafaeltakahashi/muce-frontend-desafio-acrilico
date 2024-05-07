import 'package:acrilico/molecules/glass_sample.dart';
import 'package:flutter/material.dart';

class _GlassItemData {
  const _GlassItemData({
    required this.tint,
    required this.blurSize,
    required this.opacity,
  });

  final Color tint;
  final double blurSize;
  final double opacity;
}

const List<_GlassItemData> _glassDataSource = [
  _GlassItemData(tint: Colors.red, blurSize: 10, opacity: 0.4),
  _GlassItemData(tint: Colors.green, blurSize: 10, opacity: 0.4),
  _GlassItemData(tint: Colors.blue, blurSize: 10, opacity: 0.4),
  _GlassItemData(tint: Colors.yellow, blurSize: 10, opacity: 0.4),
  _GlassItemData(tint: Colors.white, blurSize: 10, opacity: 0.1),
  _GlassItemData(tint: Colors.white, blurSize: 10, opacity: 0.7),
  _GlassItemData(tint: Colors.black, blurSize: 10, opacity: 0.1),
  _GlassItemData(tint: Colors.black, blurSize: 10, opacity: 0.7),
  _GlassItemData(tint: Colors.white, blurSize: 3, opacity: 0.4),
  _GlassItemData(tint: Colors.white, blurSize: 25, opacity: 0.0),
];

/// A wrapping list of squares.
class GlassGallery extends StatelessWidget {
  const GlassGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Leave some empty run at the bottom for overscrolling.
      padding: const EdgeInsets.only(bottom: 100),
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 5,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: _glassDataSource
            .map(
              (item) => Padding(
                padding: const EdgeInsets.all(8),
                child: GlassSample(
                  tint: item.tint,
                  blurSize: item.blurSize,
                  opacity: item.opacity,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
