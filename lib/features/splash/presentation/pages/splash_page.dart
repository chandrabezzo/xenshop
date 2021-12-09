import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_core/xenshop_core.dart';

import '../../../../app/consts/assets/images.dart';
import '../../../../app/i18n/strings.dart';
import '../get/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  static const routeName = '/splash';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: white,
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(xendit, width: 150, height: 150),
          Text(Strings.appName.tr, style: XenshopTextStyle.headline3(
              context: context,
              color: blue,
            ),
          ),
        ],
      ),
    ),
  );
}
