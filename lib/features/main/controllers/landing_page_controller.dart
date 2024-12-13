import 'package:fin_money/core/widgets/notifiers.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController {
  void doNothing() {
    Notifiers.showSnackBar(message: 'You have clicked a button!');
  }
}
