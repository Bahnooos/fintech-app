import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static const _apiKey = String.fromEnvironment('API_KEY');
  static Dio? dio;
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addHeader();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addHeader() async {
    dio?.options.headers = {
      'x-cg-demo-api-key': _apiKey,
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        request: true,
      ),
    );
  }
}
