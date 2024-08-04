import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/logic/cubit/sing_up_cubit.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/ui/widgets/sing_up_listener_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/app_size.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widgets/sing_up_form.dart';

class SingUpScreen extends StatelessWidget {
  static String routeName = 'sing-up-screen';
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Creat Account',
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(color: AppColors.primaryColor),
                ),

                // const EmailAndPassword(),
                AppSize.verticalSize(36),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By singUp, you agree to our',
                        style: context.theme.textTheme.headlineMedium
                            ?.copyWith(color: AppColors.lightGray),
                      ),
                      TextSpan(
                        text: ' Terms & Conditions',
                        style: context.theme.textTheme.headlineSmall
                            ?.copyWith(color: AppColors.lightGray),
                      ),
                      TextSpan(
                        text: ' and',
                        style: context.theme.textTheme.headlineSmall
                            ?.copyWith(color: AppColors.lightGray),
                      ),
                      TextSpan(
                        text: ' Privacy Policy',
                        style: context.theme.textTheme.labelLarge
                            ?.copyWith(color: AppColors.lightGray),
                      ),
                    ],
                  ),
                ),

                AppSize.verticalSize(36),
                const SingUpForm(),
                AppSize.verticalSize(20),
                const SignupBlocListener(),
                AppTextButton(
                  buttonText: "Create Account",
                  textStyle: context.theme.textTheme.displayLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  onPressed: () {
                    _validatorThenSingUp(context);
                  },
                ),

                AppSize.height20,
                const AlreadyHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validatorThenSingUp(BuildContext context) {
    if (context.read<SingUpCubit>().formKey.currentState?.validate() ?? false) {
      context.read<SingUpCubit>().emailLoginUser();
    }
  }
}
