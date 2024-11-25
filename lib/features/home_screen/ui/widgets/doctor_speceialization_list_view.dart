import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/logic/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/specialization_response_model.dart';
import 'doctor_speceialization_item.dart';

class DoctorSpeceializationListView extends StatefulWidget {
  const DoctorSpeceializationListView({super.key, required this.data});
  final List<SpecializationsData?> data;

  @override
  State<DoctorSpeceializationListView> createState() =>
      _DoctorSpeceializationListViewState();
}

class _DoctorSpeceializationListViewState
    extends State<DoctorSpeceializationListView> {
  int selectedId = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 5.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: widget.data.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
c            setState(() {
              selectedId = widget.data[index]?.id ?? 0;
            });
            context
                .read<HomeCubit>()
                .choseSpecialization(widget.data[index]?.id ?? 1);
          },
          child: Column(
            children: [
              if (widget.data.isNotEmpty)
                DoctorSpeceializationItem(
                  selectedId: selectedId,
                  item: widget.data[index],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
