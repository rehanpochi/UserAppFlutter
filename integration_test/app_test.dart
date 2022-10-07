import 'package:flutter/material.dart';
//import 'package:test/test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
// import 'package:integration_test/integration_test_driver.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:todo_app/main.dart' as app;
import 'dart:ui';
import 'dart:ui' as ui;

void main() {
  group('Integration Test for Whole App', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets(
        "Testing Widgets to go through them one by one", (tester) async {
          app.main();
          await tester.pumpAndSettle();
          final idField=find.byType(TextField).first;
          final nameField=find.byType(TextField).last;
          final addButton=find.byType(FloatingActionButton).first;
         await tester.enterText(idField, '5');
         await tester.enterText(nameField, "spring");
         await tester.pumpAndSettle();
         await tester.tap(addButton);
         await tester.pumpAndSettle();

    });
  });
}
