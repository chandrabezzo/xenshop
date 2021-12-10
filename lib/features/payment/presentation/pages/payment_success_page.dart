import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_core/xenshop_core.dart';

import '../../../../app/i18n/strings.dart';
import '../get/payment_success_controller.dart';

class PaymentSucccessPage extends GetView<PaymentSuccessController> {
  static const routeName = '/payment-success';
  const PaymentSucccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: white,
    body: buildBody(context),
    bottomNavigationBar: buildBottomNavigation(context),
  );

  Widget buildBody(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.thankYou.tr,
              style: XenshopTextStyle.headline4(
                context: context,
                color: blue,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              CurrencyUtil.price(amount: controller.selectedBank.totalPayment),
              style: XenshopTextStyle.headline4(
                context: context,
                color: red,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '${Strings.yourVirtualAccount.tr}:',
              style: XenshopTextStyle.caption(context: context),
            ),
            const SizedBox(height: 8),
            ExtendedImage.network(
              controller.selectedBank.image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.selectedBank.virtualAccount,
                  style: XenshopTextStyle.headline6(
                    context: context,
                    color: red,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  child: const Icon(Icons.copy, color: blue),
                  onTap: () => controller.copyVirtualAccount(),
                ),
              ],
            )
          ],
        ),
      );

  Widget buildBottomNavigation(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        child: ElevatedButton(
          onPressed: () => onContinuePressed(context),
          child: Text(Strings.continueOrder.tr),
          style: ElevatedButton.styleFrom(
            primary: blue,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
        ),
      );

  void onContinuePressed(BuildContext context) => Get.back();
}
