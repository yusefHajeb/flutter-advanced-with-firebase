import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/data/models/sign_up_reqester_body.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/data/repo/sing_up_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sing_up_state.dart';
part 'sing_up_cubit.freezed.dart';

class SingUpCubit extends Cubit<SingUpState> {
  final SingUpRepo _singUpResponse;

  SingUpCubit(this._singUpResponse) : super(SingUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();
  void emailLoginUser() async {
    emit(const SingUpState.loading());
    final response = await _singUpResponse.singUp(SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0));

    response.when(success: (success) {
      emit(SingUpState.success(response));
    }, failure: (failure) {
      emit(SingUpState.error(error: failure.apiErrorModel.message ?? ""));
    });
  }
}
