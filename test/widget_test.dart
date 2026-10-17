import 'package:flutter_test/flutter_test.dart';
import 'package:veil_messenger/main.dart';

void main() {
  testWidgets('VEIL clearly labels the foundation prototype', (tester) async {
    await tester.pumpWidget(const VeilApp());
    expect(find.text('VEIL'), findsOneWidget);
    expect(find.text('Messages'), findsOneWidget);
    expect(find.textContaining('Prototype only'), findsOneWidget);
  });
}
