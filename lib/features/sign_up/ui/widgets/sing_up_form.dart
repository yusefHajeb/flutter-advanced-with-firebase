// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SingUpForm extends StatelessWidget {
  const SingUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingValidation {
  final String message;
  final bool enapled;
  final String? textReqex;
  final int sort;
  SettingValidation({
    required this.message,
    required this.enapled,
    this.textReqex,
    required this.sort,
  });

  SettingValidation copyWith({
    String? message,
    bool? enapled,
    String? textReqex,
    int? sort,
  }) {
    return SettingValidation(
      message: message ?? this.message,
      enapled: enapled ?? this.enapled,
      textReqex: textReqex ?? this.textReqex,
      sort: sort ?? this.sort,
    );
  }
}

//
List<SettingValidation> settingValidationList = [
  SettingValidation(
    message: 'الإيميل غير صالح',
    enapled: false,
    textReqex: r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    sort: 1,
  ),
];

class SettingsValdationsField {
  final List<SettingValidation> fieldValidations;
  final int sort;

  SettingsValdationsField({required this.fieldValidations, required this.sort});

  SettingsValdationsField copyWith({
    List<SettingValidation>? fieldValidations,
    int? sort,
  }) {
    return SettingsValdationsField(
      fieldValidations: fieldValidations ?? this.fieldValidations,
      sort: sort ?? this.sort,
    );
  }
}
