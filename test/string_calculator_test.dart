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
}
