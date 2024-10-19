
class AppException implements Exception{
  final message;

 AppException([this.message]);

}

class InternetException extends AppException{
  InternetException(super.message);
}
class RequestTimeout extends AppException{
  RequestTimeout([String ? message ]) : super("no request");
}
class ServerException extends AppException{
  ServerException([String ? super.message]);
}
class InvalidUrlException extends AppException{
  InvalidUrlException([String ? super.message]);
}
class FetchDtaException extends AppException{
  FetchDtaException([String ? super.message]);
}