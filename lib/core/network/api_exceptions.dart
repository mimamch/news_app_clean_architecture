// lib/core/network/api_exceptions.dart

import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/error/failure.dart';

class ApiExceptions {
  static Failure handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        return NetworkFailure('Request dibatalkan');
      case DioExceptionType.connectionTimeout:
        return NetworkFailure('Koneksi timeout');
      case DioExceptionType.sendTimeout:
        return NetworkFailure('Waktu kirim data habis');
      case DioExceptionType.receiveTimeout:
        return NetworkFailure('Waktu terima data habis');
      case DioExceptionType.badResponse:
        return ServerFailure(
            'Terjadi kesalahan pada server: ${error.response?.statusCode}');
      case DioExceptionType.unknown:
        return NetworkFailure('Terjadi kesalahan tidak diketahui');
      default:
        return NetworkFailure('Terjadi kesalahan jaringan');
    }
  }
}
