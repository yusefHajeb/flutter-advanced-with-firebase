import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/repos/login_repos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubet_state.dart';
part 'login_cubet_cubit.freezed.dart';

class LoginCubet extends Cubit<LoginCubetState> {
  final LoginRepository _login;
  LoginCubet(this._login) : super(const LoginCubetState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginCubetState.loading());
    final response = await _login.login(loginRequestBody);
    response.when(
        success: (credential) => emit(LoginCubetState.success(credential)),
        failure: (error) => emit(
            LoginCubetState.error(error: error.apiErrorModel.message ?? ' ')));
  }
}
