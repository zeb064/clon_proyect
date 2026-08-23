// This is a basic Flutter widget test.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:clon_proyect/main.dart';

void main() {
  testWidgets('Alarm app loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const AlarmApp());

    expect(find.text('Alarmas'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.more_vert), findsOneWidget);
  });
}