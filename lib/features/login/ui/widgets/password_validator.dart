import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_colors.dart';

import '../../../../core/helper/app_size.dart';

class PasswordValidator extends StatelessWidget {
  const PasswordValidator(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMiningth});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMiningth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('at least 1 lowercase', hasLowerCase),
        AppSize.verticalSize(10),
        buildValidationRow('at least 1 uppercase', hasUpperCase),
        AppSize.verticalSize(10),
        buildValidationRow('at least 1 number', hasNumber),
        AppSize.verticalSize(10),
        buildValidationRow('at least 1 special character', hasSpecialCharacter),
        AppSize.verticalSize(10),
        buildValidationRow('at least 8 character', hasMiningth),
      ],
    );
  }

  Widget buildValidationRow(String message, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:
              hasValidation ? Colors.green : AppColors.lightPrimaryColor,
          radius: 5,
        ),
        AppSize.horizontalSize(11),
        Text(
          message,
          style: TextStyle(
            color: hasValidation
                ? AppColors.lightGray
                : AppColors.darkPrimaryColor,
            decorationThickness: 2,
            decoration: hasValidation ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
          ),
        )
      ],
    );
  }
}
