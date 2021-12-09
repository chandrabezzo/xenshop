import 'package:get/get.dart';
import '../features/main/presentation/get/main_binding.dart';
import '../features/main/presentation/pages/main_page.dart';
import '../features/splash/presentation/get/splash_binding.dart';
import '../features/splash/presentation/pages/splash_page.dart';

const String initialPageRoute = SplashPage.routeName;

final List<GetPage> pageRoutes = [
  GetPage(
    name: SplashPage.routeName, 
    page: () => const SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: MainPage.routeName, 
    page: () => const MainPage(),
    binding: MainBinding(),
  ),
];