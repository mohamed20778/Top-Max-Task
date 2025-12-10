
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/dio_consumer.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();
  @lazySingleton
  DioConsumer get dioConsumer => DioConsumer(dio: dio);
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();




}