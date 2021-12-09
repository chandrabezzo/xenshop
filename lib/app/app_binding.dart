import 'package:get/get.dart';
import 'package:http/http.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Client(), permanent: true);
  }
}
