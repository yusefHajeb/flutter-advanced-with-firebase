import '../../features/sign_up/ui/widgets/sing_up_form.dart';

class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(password);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^(70|71|73|77|78)\d{7}$').hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }

  static String? reqexPassword(
      String? passwor, SettingsValdationsField setting) {
    if (passwor == null || passwor.isEmpty) {
      return 'Please enter a valid password';
    }

    String? errorMessage = null;
    for (SettingValidation reqx in setting.fieldValidations) {
      final RegExp regexp = RegExp(reqx.textReqex ?? '');
      if (!regexp.hasMatch(passwor)) {
        errorMessage = reqx.message;
        break;
      } else {
        errorMessage = null;
      }
    }

    return errorMessage;
  }
}
