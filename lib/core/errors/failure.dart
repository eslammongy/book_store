import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;
  const Failure({required this.errorMsg});
}

class ServerError extends Failure {
  ServerError({required super.errorMsg});

  factory ServerError.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return ServerError(errorMsg: "connection timeout with api server !!");
      case DioErrorType.sendTimeout:
        return ServerError(errorMsg: "send timeout with api server !!");
      case DioErrorType.receiveTimeout:
        return ServerError(errorMsg: "receive timeout with api server !!");
      case DioErrorType.response:
        return ServerError.fromResponse(
            error.response!.statusCode!, error.response!.data);
      case DioErrorType.cancel:
        return ServerError(errorMsg: "connection canceled with api server !!");
      case DioErrorType.other:
        if (error.message.contains('SocketException')) {
          return ServerError(errorMsg: "No internet connection !!");
        }
        return ServerError(errorMsg: "Unexpected error try again later !!");
      default:
        return ServerError(
            errorMsg: 'Opps, There was an error, please try again later !');
    }
  }

  factory ServerError.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(errorMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerError(
          errorMsg: 'Your request not found, please try later !');
    } else if (statusCode == 500) {
      return ServerError(errorMsg: 'Internal server error, please try later !');
    } else {
      return ServerError(
          errorMsg: 'Opps, There was an error, please try again later !');
    }
  }
}
