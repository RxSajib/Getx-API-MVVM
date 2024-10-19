

import 'package:getx_mvvm/data/response/Status.dart';

class ApiResponse<T>{
    Status? status;
    T? data;
    String? message;

    ApiResponse({this.status, this.data, this.message});

    ApiResponse.loading() : status = Status.LOADING;
    ApiResponse.success(this.data) : status = Status.COMPLETED;
    ApiResponse.error(this.message) : status = Status.ERROR;
}