import 'package:ci_cd_training_app/core/math_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late MathUtils mathUtils;

  setUp(() {
    mathUtils = MathUtils();
  });

  group('MathUtils - sum()', () {
    test('returns correct sum for positive numbers', () {
      expect(mathUtils.sum(20, 22), 42);
      expect(mathUtils.sum(1, 1), 2);
    });

    test('returns correct sum with negative numbers', () {
      expect(mathUtils.sum(-5, 5), 0);
      expect(mathUtils.sum(-3, -2), -5);
    });
  });

  group('MathUtils - isEven()', () {
    test('returns true for even numbers', () {
      expect(mathUtils.isEven(2), true);
      expect(mathUtils.isEven(100), true);
      expect(mathUtils.isEven(0), true);
    });

    test('returns false for odd numbers', () {
      expect(mathUtils.isEven(1), false);
      expect(mathUtils.isEven(99), false);
    });
  });

}