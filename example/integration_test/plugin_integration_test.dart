// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'package:fading_marquee_widget/fading_marquee_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('marquee widget test', (WidgetTester tester) async {
    var widget = const Directionality(
        textDirection: TextDirection.ltr,
        child: FadingMarqueeWidget(child: Text("testing success")));
    await tester.pumpWidget(widget);
    final foundText = find.byWidget(widget);
    expect(foundText, findsOneWidget);
  });
}
