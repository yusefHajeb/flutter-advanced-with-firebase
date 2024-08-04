// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/app_size.dart';
import 'package:flutter_advanced_with_firebase/core/helper/app_local_data_model.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/ui/widgets/password_validator_level.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/sing_up_cubit.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({super.key});

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  var isPasswordObserve = false;
  List<bool> isPassword = [false, false, false, false, false];
  bool isPasswordConfirmationObscureText = true;
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    passwordController = context.read<SingUpCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    // final int count = 0;
    passwordController.addListener(() {
      setState(() {
        isPassword[0] = AppRegex.hasLowerCase(passwordController.text);
        isPassword[1] = AppRegex.hasUpperCase(passwordController.text);
        isPassword[2] = AppRegex.hasSpecialCharacter(passwordController.text);
        isPassword[3] = AppRegex.hasNumber(passwordController.text);
        isPassword[4] = AppRegex.hasMinLength(passwordController.text);

        isPassword.sort((a, b) => b ? 1 : 0 - (a ? 1 : 0));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SingUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            controller: context.read<SingUpCubit>().nameController,
          ),
          AppSize.height20,
          AppTextFormField(
            hintText: 'Phone number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<SingUpCubit>().phoneController,
          ),
          AppSize.verticalSize(17),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SingUpCubit>().emailController,
          ),
          AppSize.verticalSize(17),
          AppTextFormField(
            controller: context.read<SingUpCubit>().passwordController,
            hintText: 'Password',
            isObscureText: true,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObserve = !isPasswordObserve;
                });
              },
              child: Icon(
                isPasswordObserve ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              final validator =
                  AppRegex.reqexPassword(value, AppLocalModel.passwordReqex);
              return validator;
            },
          ),
          AppSize.verticalSize(17),
          AppTextFormField(
            controller:
                context.read<SingUpCubit>().passwordConfirmationController,
            hintText: 'Password Confirmation',
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          AppSize.verticalSize(17),
          BuildPasswordValidatorWidget(
            hasLowerCase: false,
            hasMiningth: false,
            hasNumber: false,
            hasSpecialCharacter: false,
            hasUpperCase: false,
            values: isPassword,
          )
        ],
      ),
    );
  }
}

class SettingValidation {
  String? message;
  bool enapled;
  String? textReqex;
  int sort;
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
// List<SettingValidation> settingValidationList = [
//   SettingValidation(
//     message: 'الإيميل غير صالح',
//     enapled: false,
//     textReqex: r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
//     sort: 1,
//   ),
// ];

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

var reqexPassword = SettingsValdationsField(
  fieldValidations: [
    SettingValidation(
      message: 'يجب أن تكون علي الاقل 8 حروف',
      textReqex: r'^.{8,}$',
      enapled: false,
      sort: 0,
    ),
    SettingValidation(
      message: 'يجب أن يحتوي النص على رقم',
      textReqex: r'^(?=.*\d)',
      enapled: false,
      sort: 0,
    ),
    SettingValidation(
      message: 'يجب أن يحتوي النص على حروف كبيرة',
      textReqex: r'^(?=.*[A-Z])',
      enapled: false,
      sort: 0,
    ),
    SettingValidation(
      message: 'يجب أن يحتوي النص على رمز',
      textReqex: r'^(?=.*[_@$!%*?&])',
      enapled: false,
      sort: 0,
    )
  ],
  sort: 2,
);

// List<SettingsValdationsField> settingsValdationsFieldList = [
// SettingsValdationsField(
//   fieldValidations: settingValidationList,
//   sort: 1,
// ),
// SettingsValdationsField(
//   fieldValidations: [
//     SettingValidation(
//       message: 'الرقم ليس صالح',
//       textReqex: r'^(70|71|73|77|78)\d{7}$',
//       enapled: false,
//       sort: 2,
//     )
//   ],
//   sort: 2,
// ),
//   SettingsValdationsField(
//     fieldValidations: [
//       SettingValidation(
//         message: 'يجب أن تكون علي الاقل 8 حروف',
//         textReqex: r'^.{8,}$',
//         enapled: false,
//         sort: 0,
//       ),
//       SettingValidation(
//         message: 'يجب أن يحتوي النص على رقم',
//         textReqex: r'^(?=.*\d)',
//         enapled: false,
//         sort: 0,
//       ),
//       SettingValidation(
//         message: 'يجب أن يحتوي النص على حروف كبيرة',
//         textReqex: r'^(?=.*[A-Z])',
//         enapled: false,
//         sort: 0,
//       ),
//       SettingValidation(
//         message: 'يجب أن يحتوي النص على رمز',
//         textReqex: r'^(?=.*[_@$!%*?&])',
//         enapled: false,
//         sort: 0,
//       )
//     ],
//     sort: 2,
//   ),
// ];
