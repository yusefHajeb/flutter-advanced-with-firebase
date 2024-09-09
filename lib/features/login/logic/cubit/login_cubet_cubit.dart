import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/repos/login_repos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helper/sheard_prefrence_healper.dart';
import '../../../../core/networking/dio_factory.dart';

part 'login_cubet_state.dart';
part 'login_cubet_cubit.freezed.dart';

class LoginCubet extends Cubit<LoginCubetState> {
  final LoginRepository _login;
  LoginCubet(this._login) : super(const LoginCubetState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginCubetState.loading());
    final response = await _login.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
        success: (credential) async {
          await _saveUserToken(credential.userData?.token ?? "");
          emit(LoginCubetState.success(credential));
        },
        failure: (error) => emit(
            LoginCubetState.error(error: error.apiErrorModel.message ?? ' ')));
  }

  Future<void> _saveUserToken(String token) async {
    log('succsee save token');
    await SharedPrefrenceHelper.setSecureToken(token);
    DioFactory.setTokenToHeader(token);
  }
}
