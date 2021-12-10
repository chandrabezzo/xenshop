import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:get/get.dart';
import 'package:xenshop_core/xenshop_core.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkInfo>(NetworkInfoImpl());
    Get.put<ErrorHandler>(
      ErrorHandlerImpl(networkInfo: Get.find<NetworkInfo>()),
      permanent: true,
    );
    Get.put<Dio>(
      Dio(
        BaseOptions(
          baseUrl: 'https://fakestoreapi.com',
          connectTimeout: const Duration(minutes: 1).inMilliseconds,
        ),
      )..interceptors.addAll([
          DioLoggingInterceptor(
            compact: true,
            level: Level.body,
            logPrint: (value) => developer.log(value.toString()),
          ),
        ]),
      permanent: true,
    );
  }
}
