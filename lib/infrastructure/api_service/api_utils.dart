import 'package:dio/dio.dart';

import '../../domain/common/entity.failure.dart';

extension DioExceptionHandler on DioException {
  FailureEntity get failure {
    final FailureEntity? failureEntity;
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        failureEntity = FailureEntity(
          message: 'Timeout',
          statusCode: response?.statusCode,
        );
        break;
      case DioExceptionType.connectionError:
        failureEntity = FailureEntity(
          message: 'Connection Error',
          statusCode: response?.statusCode,
        );
        break;
      case DioExceptionType.badCertificate:
        failureEntity = FailureEntity(
          message: 'Bad Certificate',
          statusCode: response?.statusCode,
        );
        break;
      case DioExceptionType.badResponse:
        failureEntity = FailureEntity(
          message: 'Bad Response',
          statusCode: response?.statusCode,
        );
        break;
      case DioExceptionType.cancel:
        failureEntity = FailureEntity(
          message: 'Operation Canceled',
          statusCode: response?.statusCode,
        );
        break;
      case DioExceptionType.unknown:
        failureEntity = FailureEntity(
          message: 'Unknown Error',
          statusCode: response?.statusCode,
        );
        break;
    }

    return failureEntity;
  }
}