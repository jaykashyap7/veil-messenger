import 'package:flutter_test/flutter_test.dart';
import 'package:veil_messenger/main.dart';

void main() {
  testWidgets('VEIL app shell mounts', (tester) async {
    await tester.pumpWidget(const VeilApp());
    expect(find.byType(VeilApp), findsOneWidget);
    expect(find.text('Messages'), findsOneWidget);
  });
}
