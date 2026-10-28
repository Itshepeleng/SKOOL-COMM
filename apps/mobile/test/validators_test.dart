import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/utils/validators.dart';

void main() {
  group('Validators.normalizePhone', () {
    test('accepts common SA formats and stores +27 form', () {
      for (final input in [
        '082 123 4567',
        '0821234567',
        '27821234567',
        '+27 82 123 4567',
        '+27(82)123-4567',
      ]) {
        expect(Validators.normalizePhone(input), '+27821234567');
      }
    });

    test('rejects invalid numbers', () {
      for (final input in ['abc', '12345', '082123456', '+270821234567']) {
        expect(Validators.normalizePhone(input), isNull);
      }
    });
  });

  group('Validators.email', () {
    test('accepts valid and rejects invalid addresses', () {
      expect(Validators.email('name@gmail.com'), isNull);
      expect(Validators.email(''), isNotNull);
      expect(Validators.email('name@'), isNotNull);
      expect(Validators.email('name@gmail'), isNotNull);
      expect(Validators.email('na me@gmail.com'), isNotNull);
    });

    test('normalizeEmail trims and lowercases', () {
      expect(Validators.normalizeEmail('  Name@Gmail.COM '), 'name@gmail.com');
    });
  });

  test('formatPhone shows +27 82 123 4567', () {
    expect(Validators.formatPhone('0821234567'), '+27 82 123 4567');
    expect(Validators.formatPhone('Not added'), 'Not added');
  });
}