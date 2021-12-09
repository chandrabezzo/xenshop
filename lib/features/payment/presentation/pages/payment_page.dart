import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:xenshop_core/xenshop_core.dart';

import '../../../../app/i18n/strings.dart';
import '../../domain/entities/bank.dart';
import '../get/payment_controller.dart';
import '../widgets/bank_widget.dart';

class PaymentPage extends GetView<PaymentController> {
  static const routeName = '/payment';
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        appBar: buildAppBar(context),
        body: buildBody(context),
        bottomNavigationBar: buildBottomNavigation(context),
      );

  PreferredSizeWidget buildAppBar(BuildContext context) => AppBar(
    title: Text(Strings.payment.tr),
  );

  Widget buildBody(BuildContext context) => Obx(
    () => (controller.isLoadingRetrieveBanks)
    ? buildBodySkeleton(context)
    : buildBodyBanks(context, controller.banks),
  );

  Widget buildBodyBanks(BuildContext context, List<Bank> banks) =>
    ListView.builder(
      itemBuilder: (context, index) {
        final bank = banks[index];
        return Obx(() => BankWidget(
          bank: bank,
          selectedBank: controller.selectedBank,
          onSelectBank: (bank) => controller.setSelectedBank(bank),
        ),);
      },
      itemCount: banks.length,
    );

  Widget buildBodySkeleton(BuildContext context) => ListView.builder(
    itemBuilder: (context, index) => Shimmer.fromColors(
      child: BankWidget.skeleton,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
    ),
    itemCount: 20,
  );

  Widget buildBottomNavigation(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        child: ElevatedButton(
          onPressed: () => onPayNowPressed(context),
          child: Text(Strings.payNow.tr),
          style: ElevatedButton.styleFrom(
            primary: blue,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
        ),
      );

  void onPayNowPressed(BuildContext context) => debugPrint('Pay Now Pressed');
}
