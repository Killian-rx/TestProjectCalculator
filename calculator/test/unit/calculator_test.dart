import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/main.dart';

void main() {
  test('Addition logic: 3 + 2 = 5', () {
    final calculator = CalculatorLogic();

    // Simuler les appuis de boutons
    calculator.buttonPressed('3');
    calculator.buttonPressed('+');
    calculator.buttonPressed('2');
    calculator.buttonPressed('=');

    // Vérifier le résultat
    expect(calculator.output, '5.00');
  });
}
