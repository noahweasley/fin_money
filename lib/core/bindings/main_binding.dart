import 'package:fin_money/features/main/controllers/landing_page_controller.dart';
import 'package:fin_money/features/onboarding/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingPageController());
    Get.lazyPut(() => OnBoardingController());
  }
}
