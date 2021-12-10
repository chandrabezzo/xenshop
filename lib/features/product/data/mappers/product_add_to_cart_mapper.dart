import '../../domain/entity/xenshop_cart_product.dart';
import '../models/product_add_to_cart_request_model.dart';

class ProductAddToCartMapper {
  static ProductAddToCartRequestModel toModel({
    required XenshopCartProduct product,
  }) =>
      ProductAddToCartRequestModel(
        productId: product.productId,
        quantity: product.quantity,
      );
}
