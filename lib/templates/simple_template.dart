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
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          scrolledUnderElevation: 5,
          surfaceTintColor: Theme.of(context).colorScheme.primary,
          actions: appBarActions,
        ),
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
