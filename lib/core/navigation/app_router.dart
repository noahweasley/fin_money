import 'package:fin_money/core/bindings/main_binding.dart';
import 'package:fin_money/core/constants/database.dart';
import 'package:fin_money/core/navigation/app_routes.dart';
import 'package:fin_money/features/main/screen/landing_page_screen.dart';
import 'package:fin_money/features/onboarding/screens/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppRouter {
  static final pages = [
    GetPage(
      name: Routes.landingPage,
      binding: MainBinding(),
      transition: Transition.leftToRight,
      page: () => const LandingPageScreen(),
    ),
    GetPage(
      name: Routes.onboarding,
      binding: MainBinding(),
      transition: Transition.leftToRight,
      page: () => const OnBoardingScreen(),
    ),
  ];

  static String get initialRoute {
    // ignore: unused_local_variable
    final isUserOnboard = GetStorage().read(DatabaseKey.isUserOnboard) ?? false;
    return Routes.onboarding;
  }
}
