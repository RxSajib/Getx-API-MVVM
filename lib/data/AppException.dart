
class AppException implements Exception{
  final message;

 AppException(this.message);

}

class InternetException extends AppException{
  InternetException(super.message);
}
class RequestTimeout extends AppException{
  RequestTimeout(super.message);
}
class ServerException extends AppException{
  ServerException(super.message);
}