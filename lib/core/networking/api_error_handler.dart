import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'api_error_model.dart';
import 'firebase_error_handler.dart';

/// Centralized error handler for all types of errors (Dio, Firebase, etc.)
class ApiErrorHandler {
  /// Main error handling method - handles all error types
  static ApiErrorModel handle(dynamic error) {
    // Handle Firebase Authentication errors
    if (error is FirebaseAuthException) {
      return FirebaseErrorHandler.handle(error);
    }

    // Handle Dio HTTP errors
    if (error is DioException) {
      return _handleDioError(error);
    }

    // Handle unknown errors
    return ApiErrorModel(message: "Unknown error occurred");
  }

  /// Handles Dio-specific errors
  static ApiErrorModel _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionError:
        return ApiErrorModel(message: "Connection to server failed");
      case DioExceptionType.cancel:
        return ApiErrorModel(message: "Request to the server was cancelled");
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(message: "Connection timeout with the server");
      case DioExceptionType.unknown:
        return ApiErrorModel(
          message: "Connection to the server failed due to internet connection",
        );
      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(
          message: "Receive timeout in connection with the server",
        );
      case DioExceptionType.badResponse:
        return _handleError(error.response?.data);
      case DioExceptionType.sendTimeout:
        return ApiErrorModel(
          message: "Send timeout in connection with the server",
        );
      default:
        return ApiErrorModel(message: "Something went wrong");
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? "Unknown error occurred",
    statusCode: data['statusCode'],
    errors: data['errors'],
  );
}
