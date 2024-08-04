import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_colors.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: context.theme.textTheme.bodyMedium,
          ),
          TextSpan(
            text: ' Login',
            style: context.theme.textTheme.displayMedium
                ?.copyWith(color: AppColors.darkPrimaryColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplaceNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
