import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/main.dart';

void main() {
  testWidgets('Material App testing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Home());

    expect(find.byType(MaterialApp),findsOneWidget);
  });

  testWidgets('Testing App bar ', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home :const Home(),
    ));
    expect(find.byType(AppBar),findsOneWidget);
  });

  testWidgets('Testing App bar text', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home :const Home(),
    ));
    expect(find.text('User App'),findsOneWidget);
  });

  testWidgets('Testing Expanded Widget where out user data is rendered', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home :const Home(),
    ));
    expect(find.byType(Expanded),findsNWidgets(1));
  });

  testWidgets('Testing Future Builder to build the data recieving from the Rest Api', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home :const Home(),
    ));
    expect(find.byType(FutureBuilder),findsNWidgets(1));
  });

  testWidgets('Testing Row Widget where our Floating action button are placed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home :const Home(),
    ));
    expect(find.byType(Row),findsNWidgets(1));
  });


  testWidgets('Testing 2 FLoating Action Buttons', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home :const Home(),
    ));
    expect(find.byType(FloatingActionButton),findsNWidgets(2));
  });

}
