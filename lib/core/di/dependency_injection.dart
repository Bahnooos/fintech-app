import 'package:dio/dio.dart';
import 'package:fintech_app/features/home/data/apis/home_api_service.dart';
import 'package:fintech_app/features/home/data/repos/home_repo_impl.dart';
import 'package:fintech_app/features/home/presentation/repos/home_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/presentation/logic/cubit/home_cubit.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  /// Home_Api_Service =>  Home_Repo => Home_Cubit
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(homeApiService: getIt()),
  );
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
