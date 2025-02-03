class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    if (numbers.startsWith('//')) {
      var delimeter = numbers[2];
      numbers = numbers.substring(4);
      var parts = numbers.split(delimeter);
      var sum = 0;
      for (var part in parts) {
        sum += int.parse(part);
      }
      return sum;
    }
    var parts = numbers.split(RegExp(r'[,\n]'));
    var sum = 0;
    for (var part in parts) {
      sum += int.parse(part);
    }
    return sum;
  }
}
