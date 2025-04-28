import 'dart:math' show Random;

double calculatePercentage(double value, double total) {
  return (value / total) * 100;
}

double roundToTwoDecimals(double value) {
  return double.parse(value.toStringAsFixed(2));
}

int getRandomNumber(int min, int max) {
  final rand = Random();
  return min + rand.nextInt(max - min);
}