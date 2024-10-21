
import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm/data/AppException.dart';
import 'package:http/http.dart' as http;
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiService{

  @override
  Future<dynamic> getApi(String url) async {

    dynamic response;

    try{
      var response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));

      response  = getApiResponse(response);
    }on SocketException {
      throw InternetException("no network");
    } on RequestTimeout{
      throw RequestTimeout("request timeout");
    }

    return response;
  }

  dynamic getApiResponse(http.Response response){
    switch(response.statusCode){
      case 200 : {
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      }
      case 400 : {
        throw InvalidUrlException("Invalid url");
      }
      default:{
        throw FetchDtaException("Error while communicating");
      }
    }
  }

  @override
  Future postApi(var data, String url) async{
    dynamic responseJson;

    try{
      var response = await http.post(Uri.parse(url),
      body: jsonEncode(data),).timeout(const Duration(seconds: 10));

      responseJson = getApiResponse(response);
    }on SocketException{
      throw InternetException("no network");
    }on HttpException{
      throw RequestTimeout("request timeout");
    }

    throw responseJson;
  }

}