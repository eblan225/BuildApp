import 'package:build_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('button is present and does nothing when tapped', (tester) async {
    await tester.pumpWidget(const DoNothingApp());

    final button = find.widgetWithText(FilledButton, 'Do nothing');
    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pump();

    expect(button, findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
