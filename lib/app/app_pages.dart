import 'package:get/get.dart';
import 'package:xenshop_cart/xenshop_cart.dart';
import 'package:xenshop_product/xenshop_product.dart';

import '../features/cart/cart_page.dart';
import '../features/payment/presentation/get/payment_binding.dart';
import '../features/payment/presentation/get/payment_success_binding.dart';
import '../features/payment/presentation/pages/payment_page.dart';
import '../features/product/presentation/get/xenshop_product_binding.dart';
import '../features/payment/presentation/pages/payment_success_page.dart';
import '../features/product/product_page.dart';
import '../features/splash/presentation/get/splash_binding.dart';
import '../features/splash/presentation/pages/splash_page.dart';

const String initialPageRoute = SplashPage.routeName;

final List<GetPage> pageRoutes = [
  GetPage(
    name: SplashPage.routeName, 
    page: () => const SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: PaymentPage.routeName, 
    page: () => const PaymentPage(),
    binding: PaymentBinding(),
  ),
  GetPage(
    name: PaymentSucccessPage.routeName,
    page: () => const PaymentSucccessPage(),
    binding: PaymentSuccessBinding(),
  ),

  ///Product Module
  GetPage(
    name: BaseProductPage.routeName, 
    page: () => ProductPage(),
    bindings: [
      XenshopProductBinding(),
      ProductBinding(),
    ],
  ),

  ///Cart Module
  GetPage(
    name: BaseCartPage.routeName, 
    page: () => const CartPage(),
    binding: CartBinding(),
  ),
];