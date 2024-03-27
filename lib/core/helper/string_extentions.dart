extension StringExtension on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^(?:[+0]9)?[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }

  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  bool get isEmpty => this == '';
  bool get isNotEmpty => this != '';
}

extension NullableSringExtension on String? {
  bool get isEmpty => (this == null || this == '');
  bool get isNotEmpty => (this != null && this != '');
}
