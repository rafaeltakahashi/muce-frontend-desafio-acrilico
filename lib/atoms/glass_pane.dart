import 'dart:ui';

import 'package:flutter/material.dart';

/// Modified from https://github.com/Zachariah-Abraham/glass
extension GlassWidget<T extends Widget> on T {
  /// .asGlass(): Converts the calling widget into a glass widget.
  ///
  /// Parameters:
  /// * [enabled]: Enable or disable all effects, defaults to true.
  /// * [blurX]: Amount of blur in the direction of the X axis, defaults to 10.0.
  /// * [blurY]: Amount of blur in the direction of the Y axis, defaults to 10.0.
  /// * [tintColor]: Tint color for the glass (defaults to Colors.white).
  /// * [frosted]: Whether this glass should be frosted or not, defaults to true.
  /// * [clipBorderRadius]: The border radius of the rounded corners.
  ///   Values are clamped so that horizontal and vertical radii sums do not exceed width/height.
  ///   This value is ignored if clipper is non-null.
  /// * [clipBehaviour]: Defaults to [Clip.antiAlias].
  /// * [tileMode]: Defines what happens at the edge of a gradient or the sampling of a source image in an [ImageFilter].
  /// * [clipper]: If non-null, determines which clip to use.
  Widget asGlass({
    bool enabled = true,
    double blurX = 10.0,
    double blurY = 10.0,
    Color tintColor = Colors.white,
    bool frosted = true,
    BorderRadius clipBorderRadius = BorderRadius.zero,
    Clip clipBehaviour = Clip.antiAlias,
    TileMode tileMode = TileMode.clamp,
    CustomClipper<RRect>? clipper,
  }) {
    return !enabled // The flag is for disabling dynamically
        ? this
        : ClipRRect(
            clipper: clipper,
            clipBehavior: clipBehaviour,
            borderRadius: clipBorderRadius,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: blurX,
                sigmaY: blurY,
                tileMode: tileMode,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: tintColor,
                  image: frosted
                      ? const DecorationImage(
                          image: AssetImage('img/noise.png'),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: this,
              ),
            ),
          );
  }
}
