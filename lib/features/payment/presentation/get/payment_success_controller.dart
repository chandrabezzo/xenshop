import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../app/i18n/strings.dart';
import '../../domain/entities/bank.dart';

class PaymentSuccessController extends GetxController {
  late Bank _selectedBank;

  Bank get selectedBank => _selectedBank;

  @override
  void onInit() {
    super.onInit();
    retrieveArgs();
  }

  void retrieveArgs() {
    final args = Get.arguments;
    if (args is Bank) {
      _selectedBank = args;
    }
  }

  void copyVirtualAccount() {
    Clipboard.setData(ClipboardData(text: _selectedBank.virtualAccount));
    Get.showSnackbar(GetSnackBar(
      message: '${_selectedBank.virtualAccount} ${Strings.copied}!',
      duration: const Duration(seconds: 3),
    ),);
  }
}
