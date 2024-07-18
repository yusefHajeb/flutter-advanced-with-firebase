import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/helper/extentions.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/logic/cubit/sing_up_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpBlocListenter extends StatelessWidget {
  const SingUpBlocListenter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SingUpCubit, SingUpState>(
      listenWhen: (context, current) => (current is SingUpLoading ||
          current is SingUpSuccess ||
          current is SingUpError),
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            context.showMaterialSnackBar('loading', color: Colors.red);
          },
          success: (data) {},
        );
      },
    );
  }
}
