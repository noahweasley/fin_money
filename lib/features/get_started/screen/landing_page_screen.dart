import 'package:fin_money/core/constants/app_style.dart';
import 'package:fin_money/core/constants/colors.dart';
import 'package:fin_money/core/utilities/size_config.dart';
import 'package:fin_money/features/get_started/controllers/landing_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LandingPageScreen extends GetView<LandingPageController> {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: AppColor.background,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Obx(() {
              return IndexedStack(
                index: controller.index,
                children: const [
                  // DashboardScreen(),
                  // TransactionHistoryScreen(),
                  // ProfileScreen(),
                ],
              );
            }),
          )
        ],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          backgroundColor: AppColor.white2,
          iconSize: 24,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: AppStyle.subtitle2PrimaryDark,
          unselectedLabelStyle: AppStyle.subtitle2PrimaryDark,
          onTap: controller.onItemTap,
          currentIndex: controller.index,
          selectedItemColor: AppColor.green,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment_outlined),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined),
              label: 'Profile',
            ),
          ],
        );
      }),
    );
  }
}
