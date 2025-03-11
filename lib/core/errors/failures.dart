import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return const ServerFailure('Bad Certificate Error');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return const ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return const ServerFailure(
            'No Internet Connection, Check your connection and try again');
      case DioExceptionType.unknown:
        return const ServerFailure('Unexpected Error, Please try again!');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return const ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return const ServerFailure('Internal Server Error, Please try later!');
    } else {
      return const ServerFailure('Oops There was an error, Please try later!');
    }
  }
}
