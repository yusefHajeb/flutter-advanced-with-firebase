import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/specialization_response_model.dart';
import 'doctor_speceialization_item.dart';

class DoctorSpeceializationListView extends StatelessWidget {
  const DoctorSpeceializationListView({super.key, required this.data});
  final List<SpecializationData?> data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 5.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) => Column(
          children: [
            DoctorSpeceializationItem(
              item: data[index],
            )
          ],
        ),
      ),
    );
  }
}
