import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import '../../../../app/consts/endpoint.dart';
import '../models/add_to_cart_request_model.dart';

import 'xenshop_product_datasource.dart';

class XenshopProductDatasourceImpl implements XenshopProductDatasource {
  final Dio _client;

  XenshopProductDatasourceImpl({
    required Dio client,
  }) : _client = client;

  @override
  Future<bool> addToCart({
    required AddToCartRequestModel payload,
  }) async {
    final responseJson = await _client.post(
      Endpoints.addToCart,
      data: payload,
    );

    return (responseJson.statusCode == HttpStatus.ok);
  }
}
