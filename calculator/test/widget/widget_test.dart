import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/main.dart';

void main() {
  testWidgets('Affichage initial de la calculatrice', (WidgetTester tester) async {
    await tester.pumpWidget(CalculatorApp());

    // Trouver l'affichage principal grâce à sa clé
    final displayFinder = find.byKey(Key('output_display'));

    // Vérifier que l'affichage principal contient "0"
    expect(displayFinder, findsOneWidget);
    expect(find.text('0'), findsWidgets); // Vérifie qu'il existe plusieurs "0" si besoin
  });

  testWidgets('Bouton 0 fonctionne', (WidgetTester tester) async {
    await tester.pumpWidget(CalculatorApp());

    // Trouver le bouton avec le texte "0"
    final buttonFinder = find.byKey(Key('button_0'));

    // Appuyer sur le bouton
    await tester.tap(buttonFinder);
    await tester.pump();

    // Vérifier l'affichage mis à jour
    final displayFinder = find.byKey(Key('output_display'));
    expect(displayFinder, findsOneWidget);
    expect(find.text('0'), findsWidgets);
  });
}
