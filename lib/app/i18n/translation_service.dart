import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xenshop_cart/xenshop_cart.dart';
import 'package:xenshop_product/xenshop_product.dart';

import 'locales/en.dart';
import 'locales/id.dart';

class TranslationService extends Translations {
  static final locale = Get.deviceLocale;
  static const fallbackLocale = Locale('id');

  static const Locale localizationEn = Locale('en');
  static const Locale localizationId = Locale('id');

  @override
  Map<String, Map<String, String>> get keys => {
    localizationEn.languageCode: en
      ..addAll(productEn)
      ..addAll(cartEn),
    localizationId.languageCode: id
      ..addAll(productId)
      ..addAll(cartId)
  };
}