import 'package:dio/dio.dart';

import '../utils/logger_utils.dart';

InterceptorsWrapper loggerInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) {
    LoggerUtils.d('Request: ${options.method} ${options.path}');
    return handler.next(options);
  },
  onResponse: (response, handler) {
    LoggerUtils.d('Response: ${response.statusCode} ${response.data}');
    return handler.next(response);
  },
  onError: (DioException e, handler) {
    LoggerUtils.e('Error: ${e.message}');
    return handler.next(e);
  },
);
