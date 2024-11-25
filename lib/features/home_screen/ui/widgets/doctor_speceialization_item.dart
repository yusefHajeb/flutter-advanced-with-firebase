import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helper/app_size.dart';
import '../../data/models/specialization_response_model.dart';

class DoctorSpeceializationItem extends StatelessWidget {
  const DoctorSpeceializationItem(
      {super.key, this.item, required this.selectedId});
  final SpecializationsData? item;

  final int selectedId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selectedId == item?.id
            ? Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 37, 31, 31).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ], shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 29,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      height: 40.h,
                      width: 47.w,
                      'assets/svgs/doctor.svg',
                    ),
                  ),
                ),
              )
            : Skeleton.shade(
                child: CircleAvatar(
                  radius: 28,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      height: 40.h,
                      width: 47.w,
                      'assets/svgs/doctor.svg',
                    ),
                  ),
                ),
              ),
        AppSize.verticalSize(5),
        Text(
          item?.name ?? "",
          style: context.theme.textTheme.bodySmall?.copyWith(
              fontSize: 12,
              fontWeight:
                  selectedId == item?.id ? FontWeight.bold : FontWeight.normal),
        )
      ],
    );
  }
}
