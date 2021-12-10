import '../models/add_to_cart_request_model.dart';

abstract class XenshopProductDatasource {
  Future<bool> addToCart({
    required AddToCartRequestModel payload,
  });
}
