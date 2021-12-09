import 'package:get/get.dart';
import '../../../main/presentation/pages/main_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(MainPage.routeName);
  }
}
