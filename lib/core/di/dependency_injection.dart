import 'package:dio/dio.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_service.dart';
import 'package:flutter_advanced_with_firebase/core/networking/dio_factory.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/apis/home_api_service.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/data/repos/home_repo.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/repos/login_repos.dart';
import 'package:flutter_advanced_with_firebase/features/login/logic/cubit/login_cubet_cubit.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/logic/cubit/sing_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_screen/logic/home_cubit.dart';
import '../../features/sign_up/data/repo/sing_up_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGtIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubet>(() => LoginCubet(getIt()));

  //singUp
  getIt.registerLazySingleton<SingUpRepo>(() => SingUpRepo(getIt()));
  getIt.registerFactory<SingUpCubit>(() => SingUpCubit(getIt()));

//home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt
      .registerLazySingleton<HomeRepo>(() => HomeRepo(homeApiService: getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
