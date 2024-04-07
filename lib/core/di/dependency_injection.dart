import 'package:dio/dio.dart';
import 'package:flutter_advanced_with_firebase/core/networking/api_service.dart';
import 'package:flutter_advanced_with_firebase/core/networking/dio_factory.dart';
import 'package:flutter_advanced_with_firebase/features/login/data/repos/login_repos.dart';
import 'package:flutter_advanced_with_firebase/features/login/logic/cubit/login_cubet_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGtIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubet>(() => LoginCubet(getIt()));
}
