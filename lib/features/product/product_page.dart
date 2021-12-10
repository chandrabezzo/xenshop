import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_cart/xenshop_cart.dart';
import 'package:xenshop_core/xenshop_core.dart';
import 'package:xenshop_product/xenshop_product.dart';

import '../../app/i18n/strings.dart';
import 'presentation/get/xenshop_product_controller.dart';

class ProductPage extends BaseProductPage {
  ProductPage({Key? key}) : super(key: key);

  final xenshopController = Get.find<XenshopProductController>();

  @override
  void onCartPressed(BuildContext context) =>
      Get.toNamed(BaseCartPage.routeName);

  @override
  void onAddCartPressed(BuildContext context, Product product) {
    controller.setInitialQuantityProduct();
    Get.bottomSheet(
      Obx(
        () => AddToCartWidget(
          onAddToCartPressed: () => onAddToCartPressed(context, product),
          onDecreaseQuantity: () => onDecreaseQuantity(context),
          onIncreaseQuantity: () => onIncreaseQuantity(context),
          quantity: controller.quantityProduct,
          isOnLoading: xenshopController.isLoadingAddToCart,
        ),
      ),
      backgroundColor: white,
    );
  }

  @override
  void onAddToCartPressed(BuildContext context, Product product) async {
    final currentQuantity = controller.quantityProduct;
    final addToCart = await xenshopController.addToCart(
      productId: product.id,
      quantity: currentQuantity,
    );

    if (addToCart) {
      Get.back();
      Get.showSnackbar(
        GetSnackBar(
          message: '$currentQuantity ${product.title} '
              '${Strings.successfullyAddedToCart.tr}',
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }
}
