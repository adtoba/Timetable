import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:time_table/commons/endpoints.dart';
import 'package:time_table/utils/exception.dart';


abstract class AbstractGoralService {
  Future<Map<String, dynamic>> getTimeTable();
}


class GoralService extends AbstractGoralService {
  Dio dio;
  GoralService() {
    dio = Dio();
    dio.options.connectTimeout = 5000;
    dio.options.receiveTimeout = 5000;
    dio.options.sendTimeout = 5000;
  }
  @override
  Future<Map<String, dynamic>> getTimeTable() async {
    try {
      Response response = await dio.get(MKEndpoints.gorals);
      if(response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception;
      }
    } on DioError catch (e) {
      throwDioException(e);
    }
  }

}