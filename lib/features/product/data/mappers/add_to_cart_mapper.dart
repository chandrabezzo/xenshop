import '../../domain/entity/xenshop_cart_product.dart';
import '../models/add_to_cart_request_model.dart';
import 'product_add_to_cart_mapper.dart';

class AddToCartMapper {
  static AddToCartRequestModel toModel({
    required int userId,
    required DateTime date,
    required List<XenshopCartProduct> products,
  }) =>
      AddToCartRequestModel(
        userId: userId,
        date: date,
        products: products.map((product) => ProductAddToCartMapper
          .toModel(product: product),
        ).toList(),
      );
}
