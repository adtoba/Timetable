import 'package:get_it/get_it.dart';
import 'package:time_table/services/gorals_service.dart';
import 'package:time_table/view_models/gorals_view_model.dart';

GetIt locator = GetIt.instance;


void setupLocator() {
  locator.registerFactory(() => GoralService());
  locator.registerFactory(() => GoralsViewModel());
}