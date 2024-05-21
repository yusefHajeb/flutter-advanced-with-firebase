import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_with_firebase/features/login/logic/cubit/login_cubet_cubit.dart';
import 'package:flutter_advanced_with_firebase/features/login/ui/widgets/password_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/app_size.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'password_livel.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  // List<Map<String, dynamic>> mapValidator = [
  //   {'1': false},
  //   {'2': false},
  //   {'3': false},
  //   {'4': false},
  //   {'5': false}
  // ];

  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    passwordController = context.read<LoginCubet>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    // final int count = 0;
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        // mapValidator[0]['0'] = AppRegex.hasLowerCase(passwordController.text);
        // mapValidator[1]['1'] = AppRegex.hasUpperCase(passwordController.text);
        // mapValidator[2]['2'] = AppRegex.hasUpperCase(passwordController.text);
        // mapValidator[3]['3'] = AppRegex.hasUpperCase(passwordController.text);
        // mapValidator[4]['4'] = {AppRegex.hasUpperCase(passwordController.text)};
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubet>().formKey,
      child: Column(
        children: [
          AppTextFormField(
              controller: context.read<LoginCubet>().emailController,
              hintText: 'email',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              }),
          AppSize.verticalSize(18),
          AppTextFormField(
              controller: context.read<LoginCubet>().passwordController,
              hintText: 'password',
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              }),
          AppSize.verticalSize(24),
          PasswordValidatorColorWidget(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacter: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMiningth: hasMinLength,
            value: [
              hasLowercase,
              hasUppercase,
              hasSpecialCharacters,
              hasNumber,
              hasMinLength
            ],
          ),
          PasswordValidator(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacter: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMiningth: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
