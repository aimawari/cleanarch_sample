import 'dart:io';

import 'package:dio/dio.dart';

import '../../shared/constants/api_constants.dart';
import 'logger_interceptor.dart';

class DioClient {
  late final Dio dio;

  DioClient() {
    dio = Dio();

    dio
      ..options.baseUrl = ApiConstants.baseUrl
      ..options.headers = {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      }
      ..options.connectTimeout = const Duration(milliseconds: 15000)
      ..options.receiveTimeout = const Duration(milliseconds: 15000)
      ..options.responseType = ResponseType.json;

    dio.interceptors.addAll([loggerInterceptor]);
  }
}
