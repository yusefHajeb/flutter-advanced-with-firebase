import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class RoundedBorder extends StatelessWidget {
  const RoundedBorder(
      {Key? key,
      required this.icon,
      this.width,
      this.height,
      this.buttonName,
      this.color = Colors.white})
      : super(key: key);
  final IconData icon;
  final double? width;
  final double? height;
  final Color? color;
  final String? buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 3, color: AppColors.darkPrimaryColor),
        ),
        child: Center(
            child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 10,
          clipBehavior: Clip.hardEdge,
          children: [
            Icon(icon, size: 20, color: color),
            if (buttonName != null)
              Text(
                buttonName!,
                style: TextStyle(color: color),
              )
          ],
        )));
  }
}
