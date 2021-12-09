import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_cart/xenshop_cart.dart';

import '../payment/presentation/pages/payment_page.dart';

class CartPage extends BaseCartPage {
  const CartPage({Key? key}) : super(key: key);

  @override
  void onCheckoutPressed(BuildContext context) 
    => Get.toNamed(
      PaymentPage.routeName,
      arguments: controller.totalPrice,
    );
}
