import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_reuslt.dart';
import 'package:fintech_app/features/home/data/apis/home_api_service.dart';
import 'package:fintech_app/features/home/data/models/coin_model.dart';
import 'package:fintech_app/features/home/data/models/global_data_response.dart';
import 'package:fintech_app/features/home/data/models/trending_response.dart';
import 'package:fintech_app/features/home/presentation/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeApiService homeApiService;

  HomeRepoImpl({required this.homeApiService});

  @override
  Future<ApiReuslt<GlobalDataResponse>> getGlobalData() async {
    try {
      final response = await homeApiService.getGlobalData();
      return ApiReuslt.success(response);
    } catch (error) {
      return ApiReuslt.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiReuslt<TrendingResponse>> getTrendingCoins() async {
    try {
      final response = await homeApiService.getTrendingCoins();
      return ApiReuslt.success(response);
    } catch (error) {
      return ApiReuslt.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiReuslt<List<CoinModel>>> getCoinsDetails() async {
    try {
      final response = await homeApiService.getCoinsDetails('usd');
      return ApiReuslt.success(response);
    } catch (error) {
      return ApiReuslt.failure(ApiErrorHandler.handle(error));
    }
  }
}
