import 'package:flutter/foundation.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_response_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
//spesizialition

  const factory HomeState.specializationSuccess(
      SpecializationResponseModel specializations) = SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler error) =
      SpecializationError;

  const factory HomeState.specializationLoading() = SpecializationLoading;
}
