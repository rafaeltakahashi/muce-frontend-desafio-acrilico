import 'dart:ui';

import 'package:flutter/material.dart';

class SimpleTemplate extends StatelessWidget {
  const SimpleTemplate({
    super.key,
    required this.title,
    this.appBarActions = const [],
    required this.child,
    this.background,
  });

  final String title;
  final List<Widget> appBarActions;
  final Widget child;
  final Widget? background;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              Theme.of(context).colorScheme.primary.withAlpha(0x60),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          elevation: 0,
          actions: appBarActions,
          // https://stackoverflow.com/a/68688509
          // This uses a slightly different strategy as the glass pane to create
          // the acryllic affect. This adds a blur to the image under the app
          // bar, and relies on the app bar itself having a transparent color.
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            if (background != null) background!,
            SingleChildScrollView(
              child: SafeArea(
                child: child,
              ),
            ),
          ],
        ));
  }
}
