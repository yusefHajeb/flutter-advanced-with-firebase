import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/models/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/app_size.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorsListViewItem({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              doctorModel?.photo ?? '',
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          AppSize.horizontalSize(20),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 251, 251),
                borderRadius: BorderRadius.circular(14)),
            child: Column(
              children: [
                Text(doctorModel?.name ?? "name",
                    style: context.theme.textTheme.bodyMedium),
                AppSize.verticalSize(6),
                Text(doctorModel?.email ?? "address",
                    style: context.theme.textTheme.bodySmall),
                AppSize.verticalSize(6),
                Text(doctorModel?.name ?? "address",
                    style: context.theme.textTheme.bodySmall)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
