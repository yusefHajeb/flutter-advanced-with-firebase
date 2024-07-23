import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/features/login/logic/cubit/login_cubet_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/app_size.dart';
import '../../../../core/helper/app_local_data_model.dart';
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
  List<bool> isPassword = [false, false, false, false, false];
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    passwordController = context.read<LoginCubet>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
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
                final validator =
                    AppRegex.reqexPassword(value, AppLocalModel.passwordReqex);
                return validator;
              }),
          AppSize.verticalSize(24),
          PasswordValidatorColorWidget(
            values: isPassword,
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
