import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_cart/xenshop_cart.dart';
import 'package:xenshop_product/xenshop_product.dart';

import '../../app/i18n/strings.dart';

class ProductPage extends BaseProductPage {
  const ProductPage({Key? key}) : super(key: key);

  @override
  void onCartPressed(BuildContext context) =>
      Get.toNamed(BaseCartPage.routeName);

  @override
  void onAddToCartPressed(BuildContext context, Product product) {
    final currentQuantity = controller.quantityProduct;
    Get.back();
    Get.showSnackbar(GetSnackBar(
        message:
          '$currentQuantity ${product.title} '
          '${Strings.successfullyAddedToCart.tr}',
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
