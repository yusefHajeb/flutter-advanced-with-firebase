import 'package:dio/dio.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_constant.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/models/login_request_body.dart';
import 'package:retrofit/http.dart';

import '../../features/login/data/models/login_response.dart';
import '../../features/sign_up/data/models/sign_up_reqester_body.dart';
import '../../features/sign_up/data/models/sign_up_resonse_body.dart';
// import '../../features/sign_up/data/models/sign_up_resonse_body.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
