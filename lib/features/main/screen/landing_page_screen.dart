import 'package:fin_money/core/constants/app_style.dart';
import 'package:fin_money/core/constants/assets.dart';
import 'package:fin_money/core/constants/dimensions.dart';
import 'package:fin_money/core/widgets/app_bar.dart';
import 'package:fin_money/core/widgets/app_bar.dart';
import 'package:fin_money/core/widgets/app_button.dart';
import 'package:fin_money/features/main/controllers/landing_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LandingPageScreen extends GetView<LandingPageController> {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Discover',
          style: AppStyle.title,
        ),
      ),
      body: Column(
        children: [
          Image.asset(Assets.peopleWaving),
          Padding(
            padding: const EdgeInsets.all(Dimensions.space2),
            child: AppButton(
              width: Dimensions.navigateBtnWidth,
              text: 'Start exploring',
              onTap: controller.doNothing,
            ),
          ),
        ],
      ),
    );
  }
}
