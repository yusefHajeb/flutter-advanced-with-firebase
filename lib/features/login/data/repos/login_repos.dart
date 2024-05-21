import 'package:flutter_advanced_with_firebase/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class LoginRepository {
  final ApiService _apiService;
  LoginRepository(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final result = await _apiService.login(loginRequestBody);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
