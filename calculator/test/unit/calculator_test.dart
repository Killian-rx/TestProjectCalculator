import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Calculatrice - Tests unitaires', () {
    test('Addition', () {
      double result = 2 + 3;
      expect(result, 5);
    });

    test('Multiplication', () {
      double result = 4 * 5;
      expect(result, 20);
    });
  });
}
