import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'app_binding.dart';
import 'app_pages.dart';

import 'flavors.dart';
import 'i18n/translation_service.dart';
import 'styles/styles.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: (F.appFlavor == Flavor.staging),
      title: F.title,
      initialRoute: initialPageRoute,
      getPages: pageRoutes,
      theme: Styles.lightTheme(),
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      initialBinding: AppBinding(),
    );
  }
}
