import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/app_size.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/core/routes/routes.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_styles.dart';
import 'package:flutter_advanced_with_firebase/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DocLogoAndName(),
                const DoctorImageAndText(),
                // AppSize.height20,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'By continuing, you agree to the privacy policy',
                        style: context.theme.textTheme.bodyMedium,
                      ),
                      AppSize.height10,
                      TextButton(
                        onPressed: () {
                          context.pushReplaceNamed(Routes.loginScreen);
                        },
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: MaterialStateProperty.all(
                            const Size(double.infinity, 52),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        child: Text("Go Start",
                            style: context.theme.textTheme.headlineLarge!
                                .copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SvgPicture.asset('assets/svgs/doc_logo.svg'),
        SizedBox(width: 10.w),
        Text(
          'Doc',
          style: TextStyles.bodyLarge,
        ),
      ],
    );
  }
}
