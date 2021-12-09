import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  static const routeName = '/splash';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Text('Xenshop'),
      );
}
