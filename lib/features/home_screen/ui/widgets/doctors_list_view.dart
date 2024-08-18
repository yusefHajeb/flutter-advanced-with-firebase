// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/ui/widgets/doctors_list_view_item.dart';

import '../../data/models/specialization_response_model.dart';

// ignore: must_be_immutable
class DoctorsListView extends StatelessWidget {
  List<Doctors?>? doctors;
  DoctorsListView({
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctors?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorModel: doctors?[index],
          );
        },
      ),
    );
  }
}
