// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';

import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          message: dioException.response?.data.toString().contains('message') ?? true ? dioException.response?.data['message'] : null,
        );

      case DioExceptionType.connectionTimeout:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          message: dioException.response?.data.toString().contains('message') ?? true ? dioException.response?.data['message'] : null,
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive Timeout');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          message: dioException.response?.data.toString().contains('message') ?? true ? dioException.response?.data['message'] : null,
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send Timeout');

      case DioExceptionType.connectionError:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          message: dioException.response?.data.toString().contains('message') ?? true ? dioException.response?.data['message'] : null,
        );

      default:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          message: dioException.response?.data.toString().contains('message') ?? true ? dioException.response?.data['message'] : null,
        );
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, {String? message}) {
    switch (statusCode) {
      case 400:
        return ServerFailure(message: message ?? 'The request could not be processed due to invalid syntax or parameters (Bad Request).');
      case 401:
        return ServerFailure(message: message ?? 'Authentication is required or the provided credentials are invalid (Unauthorized).');
      case 403:
        return ServerFailure(message: message ?? 'Access is denied. You do not have the necessary permissions to perform this action (Forbidden).');
      case 404:
        return ServerFailure(message: message ?? 'The requested resource could not be found on the server (Not Found).');
      case 422:
        return ServerFailure(message: message ?? 'The request was well-formed but contains semantic errors or invalid data (Unprocessable Entity).');
      case 500:
        return ServerFailure(
          message: message ?? 'The server encountered an unexpected condition that prevented it from fulfilling the request (Internal Server Error).',
        );
      case 502:
        return ServerFailure(message: message ?? 'The server received an invalid response from an upstream server (Bad Gateway).');
      default:
        return ServerFailure(message: message ?? 'An unexpected error occurred. Please try again later (Unknown Error).');
    }
  }

  @override
  String toString() => message;
}
