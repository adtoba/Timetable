import 'dart:convert';
import 'package:dio/dio.dart';

DioError throwDioException(e) {
  if(e.type == DioErrorType.RESPONSE) {
    throw DioError(error: e.response, type: DioErrorType.RESPONSE);
  } else if(e.type == DioErrorType.DEFAULT) {
    throw DioError(error: e.message, type: DioErrorType.DEFAULT);
  } else if(e.type == DioErrorType.CONNECT_TIMEOUT) {
    throw DioError(error: e.message, type: DioErrorType.CONNECT_TIMEOUT);
  } else if(e.type == DioErrorType.RECEIVE_TIMEOUT) {
    throw DioError(error: e.message, type: DioErrorType.RECEIVE_TIMEOUT);
  } else if(e.type == DioErrorType.SEND_TIMEOUT) {
    throw DioError(error: e.message, type: DioErrorType.SEND_TIMEOUT);
  } else {
    throw DioError(error: e.message);
  }
}

String catchDioException(e) {
  if(e.type == DioErrorType.RESPONSE) {
    var message = json.decode(e.message);
    return message['message'];
  } else if(e.type == DioErrorType.DEFAULT){
    var message = 'Oops, looks like you don\'t have a network connection'
        ' Mind trying again? ';
    return message;
  } else {
    var message = 'Oops, an error occured';
    return message;
  }
}