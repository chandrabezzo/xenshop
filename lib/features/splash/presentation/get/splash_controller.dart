import 'package:get/get.dart';
import 'package:xenshop_product/xenshop_product.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(BaseProductPage.routeName);
  }
}
