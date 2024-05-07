// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:acrilico/main.dart';

void main() {
  testWidgets('Look for images', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Since there isn't behavior, there's almost nothing that we can validate.
    expect(find.text("Frosted Glass Catalog"), findsAny);
    expect(find.image(const AssetImage("img/forest.jpg")), findsOneWidget);
    await tester.tap(find.byKey(const Key("btn_change_background")));
    await tester.pump(const Duration(milliseconds: 1000));
    expect(find.image(const AssetImage("img/cold.jpg")), findsOneWidget);
  });
}
