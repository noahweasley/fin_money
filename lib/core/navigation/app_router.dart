import 'package:fin_money/core/navigation/app_routes.dart';
import 'package:fin_money/features/get_started/screen/landing_page_screen.dart';
import 'package:fin_money/features/onboarding/screens/onboarding_screen.dart';
import 'package:fin_money/features/shared/bindings/main_binding.dart';
import 'package:get/get.dart';

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
    return Routes.onboarding;
  }
}
