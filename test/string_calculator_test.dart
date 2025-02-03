import 'package:string_calculator_tdd/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    var calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });

  test('Single number returns the number itself', () {
    var calculator = StringCalculator();
    expect(calculator.add('1'), 1);
  });

  test('Two number returns sum', () {
    var calculator = StringCalculator();
    expect(calculator.add('1,5'), 6);
  });

  test('New lines between numbers returns sum', () {
    var calculator = StringCalculator();
    expect(calculator.add('1\n2,3'), 6);
  });
  test('Custom delimiter works', () {
    var calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), 3);
  });
  test('Negative number throw exception', () {
    var calculator = StringCalculator();
    expect(() => calculator.add('-1,2'), throwsA(isA<FormatException>()));
  });
}
