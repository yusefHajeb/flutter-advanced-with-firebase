import 'package:flutter_advanced_with_firebase/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/apis/home_api_service.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/models/specialization_response_model.dart';

import '../../../../core/networking/api_result.dart';

class HomeRepo {
  final HomeApiService homeApiService;

  HomeRepo({required this.homeApiService});
  Future<ApiResult<SpecializationResponseModel>> getHomeData() async {
    try {
      final response = await homeApiService.getHomeData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
