import 'package:get/get.dart';
import 'package:xenshop_product/domain/usecases/retrieve_categories.dart';
import 'package:xenshop_product/xenshop_product.dart';

import '../../domain/entity/xenshop_cart_product.dart';
import '../../domain/usecases/add_to_cart.dart';

class XenshopProductController extends ProductController {
  final AddToCart _addToCart;

  XenshopProductController({
    required AddToCart addToCart,
    required RetrieveCategories retrieveCategories,
    required RetrieveProducts retrieveProducts,
  })  : _addToCart = addToCart,
        super(
          retrieveCategories: retrieveCategories,
          retrieveProducts: retrieveProducts,
        );

  final _isLoadingAddToCart = false.obs;

  bool get isLoadingAddToCart => _isLoadingAddToCart.value;

  Future<bool> addToCart({
    required int productId,
    required int quantity,
  }) async {
    _isLoadingAddToCart.value = true;
    final added = await _addToCart.execute(
      AddToCartParams(
        ///Since this api just fake, we need to static the user id
        userId: 88,
        product: XenshopCartProduct(
          productId: productId,
          quantity: quantity,
        ),
      ),
    );
    _isLoadingAddToCart.value = false;
    _isLoadingAddToCart.refresh();
    return added;
  }
}
