import 'package:dio/dio.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_constant.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/models/specialization_response_model.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(
    Dio dio,
  ) = _HomeApiService;

  // @Headers({"Content-Type": "application/json", "Custom_Header": "you"})
  @GET(ApiConstants.specializationEN)
  Future<SpecializationsResponseModel> getHomeData();
}
