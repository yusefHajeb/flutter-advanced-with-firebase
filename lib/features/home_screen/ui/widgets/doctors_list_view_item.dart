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
            child: Image.network(doctorModel?.photo ?? '', fit: BoxFit.cover),
          ),
          AppSize.horizontalSize(20),
          Expanded(
              child: Column(
            children: [
              Text(doctorModel?.name ?? "name",
                  style: context.theme.textTheme.headlineMedium),
              AppSize.verticalSize(6),
              Text(doctorModel?.email ?? "address",
                  style: context.theme.textTheme.headlineSmall),
              AppSize.verticalSize(6),
              Text(doctorModel?.name ?? "address",
                  style: context.theme.textTheme.headlineSmall)
            ],
          ))
        ],
      ),
    );
  }
}
