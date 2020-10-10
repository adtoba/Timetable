import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:time_table/json.dart';
import 'package:time_table/locator.dart';
import 'package:time_table/models/time_table_model.dart';
import 'package:time_table/services/gorals_service.dart';
import 'package:time_table/utils/exception.dart';
import 'package:time_table/utils/toast.dart';
import 'package:time_table/view_models/base_model.dart';


class GoralsViewModel extends BaseModel {
  GoralService service;

  GoralsViewModel() {
    service ??= locator.get<GoralService>();
  }

  TimetableModel model;
  String message;

  void resetErrorMessage(String val) {
    message = null;
    notifyListeners();
  }


  Future<void> fetchTimeTable() async {
    busy = true;
    notifyListeners();

    try {
      Map<String, dynamic> data = await service.getTimeTable();
      if(data == null) {
        message = 'Oops, an error occured';
        notifyListeners();
      } else {
        model = TimetableModel.fromJson(data);
        print(model.toJson().toString());
        notifyListeners();
      }
    } on DioError catch(e) {
      message = catchDioException(e);
      showErrorToast(message: message);
      notifyListeners();
    } finally {
      busy = false;
      notifyListeners();
    }
  }
}