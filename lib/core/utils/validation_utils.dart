class ValidationUtils {
  ValidationUtils._();

  static bool isPasswordStrong(String password) {
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]'));
  }

  static bool isUsernameValid(String username) {
    return username.isNotEmpty && username.length >= 3;
  }

  static bool isValidEmail(String email) {
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegExp.hasMatch(email);
  }

  static bool isValidPhoneNumber(String phone) {
    final phoneRegExp = RegExp(r'^\+?1?\d{9,15}$');
    return phoneRegExp.hasMatch(phone);
  }
}