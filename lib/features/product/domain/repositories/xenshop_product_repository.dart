import '../entity/xenshop_cart_product.dart';

abstract class XenshopProductRepository {
  Future<bool> addToCart({
    required int userId,
    required DateTime date,
    required List<XenshopCartProduct> products,
  });
}
