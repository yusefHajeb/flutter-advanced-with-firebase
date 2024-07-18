import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/app_size.dart';
import '../../../core/theme/app_colors.dart';

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

                AlreadyHaveAccountText()
                // LoginBlocListener(),
                // AppTextButton(
                //     buttonText: 'Login',
                //     textStyle: context.theme.textTheme.bodyMedium,
                //     onPressed: () {
                //       validateThenDoLogin(context);
                //     }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
