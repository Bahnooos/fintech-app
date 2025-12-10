import 'package:dio/dio.dart';
import 'package:fintech_app/core/helpers/shared_pref.dart';
import 'package:fintech_app/core/services/local_auth_services.dart';
import 'package:fintech_app/features/auth/data/repo/auth_repo_impl.dart';
import 'package:fintech_app/features/auth/logic/cubit/auth_cubit.dart';
import 'package:fintech_app/features/auth/presentation/repo/auth_repo.dart';
import 'package:fintech_app/features/home/data/apis/home_api_service.dart';
import 'package:fintech_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:fintech_app/features/home/data/data_sources/home_local_data_source_impl.dart';
import 'package:fintech_app/features/home/data/repos/home_repo_impl.dart';
import 'package:fintech_app/features/home/presentation/repos/home_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/presentation/logic/cubit/home_cubit.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  /// Auth
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl());
  getIt.registerLazySingleton<LocalAuthService>(() => LocalAuthService());
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt(), getIt()));

  final sharedPref = await SharedPref.getInstance();
  getIt.registerSingleton<SharedPref>(sharedPref);

  /// Home_Api_Service =>  Home_Repo => Home_Cubit
  /// Home Feature Dependencies
  /// HomeLocalDataSource => HomeApiService => HomeRepo => HomeCubit

  getIt.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );

  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      homeApiService: getIt(),
      localDataSource: getIt(),
    ),
  );

  // Cubit
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
