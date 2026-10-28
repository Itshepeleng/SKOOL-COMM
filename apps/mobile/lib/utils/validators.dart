/// Shared input validation and normalisation, so every screen accepts and
/// stores emails and phone numbers in the same format.
class Validators {
  Validators._();

  static final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]{2,}$');

  /// Emails are stored trimmed and lowercase.
  static String normalizeEmail(String value) => value.trim().toLowerCase();

  static String? email(String? value) {
    final address = (value ?? '').trim();
    if (address.isEmpty) return 'Email address is required';
    return _emailPattern.hasMatch(address)
        ? null
        : 'Enter a valid email address';
  }

  /// South African numbers are stored as +27XXXXXXXXX (no spaces).
  /// Accepts 082 123 4567, 0821234567, 27821234567 and +27 82 123 4567.
  /// Returns null if the value is not a valid SA number.
  static String? normalizePhone(String value) {
    var digits = value.replaceAll(RegExp(r'[\s\-().]'), '');
    if (digits.startsWith('+')) digits = digits.substring(1);
    if (digits.startsWith('0')) {
      digits = '27${digits.substring(1)}';
    }
    return RegExp(r'^27[1-9]\d{8}$').hasMatch(digits) ? '+$digits' : null;
  }

  static String? phone(String? value) {
    final text = (value ?? '').trim();
    if (text.isEmpty) return 'Phone number is required';
    return normalizePhone(text) == null
        ? 'Enter a valid SA number, e.g. 082 123 4567'
        : null;
  }

  /// Display form: +27 82 123 4567. Unknown values are returned unchanged.
  static String formatPhone(String value) {
    final normalized = normalizePhone(value);
    if (normalized == null) return value;
    return '+27 ${normalized.substring(3, 5)} '
        '${normalized.substring(5, 8)} ${normalized.substring(8)}';
  }
}