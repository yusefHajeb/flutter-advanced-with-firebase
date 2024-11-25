import 'package:flutter_advanced_with_firebase/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  Future<void> getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getHomeData();
    response.when(success: (specializationSuccess) {
      emit(HomeState.specializationSuccess(
          specializationSuccess,
          specializationSuccess.specializationDataList?.first?.doctorsList,
          specializationSuccess.specializationDataList));
    }, failure: (error) {
      emit(HomeState.specializationError(ErrorHandler.handle(error)));
    });
  }

  void choseSpecialization(int specializationId) async {
    if (state is SpecializationSuccess) {
      final success = (state as SpecializationSuccess);
      final doctors = success.specializationDataList
          ?.where((test) => test?.id == specializationId)
          .toList()
          .first
          ?.doctorsList;
      emit(success.copyWith(doctorsSelected: doctors));
    }
  }
}
