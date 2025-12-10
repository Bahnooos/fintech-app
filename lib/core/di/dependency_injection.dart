import 'package:dio/dio.dart';
import 'package:fintech_app/core/service/stripe_service.dart';
import 'package:fintech_app/features/home/data/apis/home_api_service.dart';
import 'package:fintech_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:fintech_app/features/home/data/data_sources/home_local_data_source_impl.dart';
import 'package:fintech_app/features/home/data/repos/home_repo_impl.dart';
import 'package:fintech_app/features/home/presentation/repos/home_repo.dart';
import 'package:fintech_app/features/payment/data/apis/coin_apis.dart';
import 'package:fintech_app/features/payment/data/repos/payment_repo.dart';
import 'package:fintech_app/features/payment/presentation/cubit/payment_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/presentation/logic/cubit/home_cubit.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio);

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

  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // Payment Feature Dependencies
  _initPaymentDependencies();
}


void _initPaymentDependencies() {
  getIt.registerLazySingleton<CoinService>(() => CoinService(getIt<Dio>()));
  getIt.registerLazySingleton<StripeService>(() => StripeService());
  getIt.registerLazySingleton<PaymentRepo>(
    () => PaymentRepo(
      stripeService: getIt<StripeService>(),
      api: getIt<CoinService>(),
    ),
  );

  getIt.registerLazySingleton<PaymentCubit>(
    () => PaymentCubit(paymentRepo: getIt<PaymentRepo>()),
  );
}