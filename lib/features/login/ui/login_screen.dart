import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/app_size.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_colors.dart';
import 'package:flutter_advanced_with_firebase/core/theme/font_wight_helper.dart';
import 'package:flutter_advanced_with_firebase/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_with_firebase/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'loginScreen';
  const LoginScreen({super.key});

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
                  'Wellcome Back',
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(color: AppColors.primaryColor),
                ),
                AppSize.verticalSize(8),
                Text(
                    " 'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.",
                    style: context.theme.textTheme.headlineMedium
                        ?.copyWith(color: AppColors.lightGray)),
                AppSize.verticalSize(36),
                const EmailAndPassword(),
                AppSize.verticalSize(36),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeightHelper.extraBold),
                  ),
                ),
                AppSize.verticalSize(36),
                AppTextButton(
                    buttonText: 'Login',
                    textStyle: context.theme.textTheme.bodyMedium,
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
