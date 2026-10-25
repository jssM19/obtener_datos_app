import 'package:flutter_test/flutter_test.dart';

import 'package:obtener_datos_app/main.dart';

void main() {
  testWidgets('Muestra la pantalla de usuarios', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Usuarios'), findsOneWidget);
  });
}
