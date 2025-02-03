import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    var calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
}
