class Validator {
  // Name Validation
  static String? validateName({required String? name}) {
    if (name == null) {
      return null;
    }
    if (name.isEmpty) {
      return 'Name can not be empty';
    }
    return null;
  }

  // Name Validation
  static String? validateEmail({required String? email}) {
    if (email == null) {
      return null;
    }
    RegExp emailRegex = RegExp(r'^[a-zA-Z0-9!#$%*+=_-]+@gmail.com$');
    if (email.isEmpty) {
      return 'Name can not be empty';
    } else if (!emailRegex.hasMatch(email)) {
      return 'Enter a valid Email';
    }
    return null;
  }

  // Name Validation
  static String? validatePassword({required String? password}) {
    if (password == null) {
      return null;
    }
    // RegExp emailRegex = RegExp(r'^[a-zA-Z0-9!#$%*+=_-]+$');
    int length = 6;
    if (password.isEmpty) {
      return 'Name can not be empty';
    } else if (password.length <= 6) {
      return 'Enter a password with length at least 6 characters';
    }
    return null;
  }
}
