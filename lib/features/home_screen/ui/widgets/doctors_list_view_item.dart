import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/models/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helper/app_size.dart';
import '../../../../core/theme/app_styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorsListViewItem({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Skeleton.replace(
            width: 100.w,
            height: 100.h,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Imagee(image: NetworkImage(doctorModel?.photo ?? "")),
              ),
            ),
          ),
          AppSize.horizontalSize(25),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 251, 251),
                borderRadius: BorderRadius.circular(14)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel?.name ?? "name",
                  style: TextStyles.bodyMediuum,
                ),
                AppSize.verticalSize(6),
                Text(
                  doctorModel?.email ?? "address",
                  style: TextStyles.bodySmall,
                ),
                AppSize.verticalSize(6),
                Text(
                  doctorModel?.name ?? "address",
                  style: TextStyles.bodySmall,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class Imagee extends StatefulWidget {
  /// The default constructor
  const Imagee({
    Key? key,
    required this.image,
  }) : super(key: key);

  /// The argument [src] is passed to the [NetworkImage] and assigned to the [image] property
  Imagee.network(
    String src, {
    super.key,
    Map<String, String>? headers,
    double scale = 1.0,
  }) : image = NetworkImage(src, headers: headers, scale: scale);

  final ImageProvider image;

  @override
  State<Imagee> createState() => _ImageeState();
}

class _ImageeState extends State<Imagee> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: widget.image,
      fit: BoxFit.cover,
      alignment: Alignment.center,
    );
  }
}
