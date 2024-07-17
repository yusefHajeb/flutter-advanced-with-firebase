import 'package:flutter_advanced_with_firebase/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_service.dart';

import '../../../../core/networking/api_result.dart';
import '../models/sign_up_reqester_body.dart';
import '../models/sign_up_resonse_body.dart';

class SingUpRepo {
  final ApiService _apiService;
  SingUpRepo(this._apiService);

  Future<ApiResult<SignupResponse>> singUp(
      SignupRequestBody singRequest) async {
    try {
      final response = await _apiService.signup(singRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
