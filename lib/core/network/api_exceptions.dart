// lib/core/network/api_exceptions.dart

import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/error/failure.dart';

class ApiExceptions {
  static Failure handleDioError(DioException error) {
    if (error.response?.data['message'] != null) {
      return NetworkFailure(error.response!.data['message']);
    }
    switch (error.type) {
      case DioExceptionType.cancel:
        return const NetworkFailure('Request dibatalkan');
      case DioExceptionType.connectionTimeout:
        return const NetworkFailure('Koneksi timeout');
      case DioExceptionType.sendTimeout:
        return const NetworkFailure('Waktu kirim data habis');
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure('Waktu terima data habis');
      case DioExceptionType.badResponse:
        return ServerFailure(
            'Terjadi kesalahan pada server: ${error.response?.statusCode}');
      case DioExceptionType.unknown:
        return const NetworkFailure('Terjadi kesalahan tidak diketahui');
      default:
        return const NetworkFailure('Terjadi kesalahan jaringan');
    }
  }
}
