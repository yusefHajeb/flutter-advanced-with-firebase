import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/app_size.dart';
import '../../data/models/specialization_response_model.dart';

class DoctorSpeceializationItem extends StatelessWidget {
  const DoctorSpeceializationItem({super.key, this.item});
  final SpecializationsData? item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 29,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              height: 40.h,
              width: 40.w,
              'assets/svgs/notifications.svg',
            ),
          ),
        ),
        AppSize.verticalSize(5),
        Text(
          item?.name ?? "",
          style: context.theme.textTheme.bodySmall?.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
