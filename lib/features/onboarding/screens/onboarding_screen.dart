import 'package:carousel_slider/carousel_slider.dart';
import 'package:fin_money/core/constants/app_style.dart';
import 'package:fin_money/core/constants/colors.dart';
import 'package:fin_money/core/constants/dimensions.dart';
import 'package:fin_money/core/widgets/annotated_status_bar.dart';
import 'package:fin_money/core/widgets/app_button.dart';
import 'package:fin_money/features/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedStatusBar(
      color: Colors.white,
      brightness: Brightness.light,
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.space2),
            child: Column(
              children: [
                Expanded(
                  child: Obx(() => CarouselSlider(
                        carouselController: controller.pageController,
                        options: CarouselOptions(
                          initialPage: controller.currentIndex.value,
                          aspectRatio: 16 / 9,
                          height: double.infinity,
                          viewportFraction: 1,
                          autoPlay: true,
                          disableCenter: true,
                          onPageChanged: controller.onPageChanged,
                        ),
                        items: controller.onBoardingItems.map((item) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(Dimensions.space2),
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.headline6PrimaryDark.bold,
                                ),
                              ),
                              Image.asset(
                                width: 400,
                                height: 400,
                                item.imgString,
                                fit: BoxFit.contain,
                              ),
                            ],
                          );
                        }).toList(),
                      )),
                ),
                Column(
                  children: [
                    Obx(() => AnimatedSmoothIndicator(
                          onDotClicked: controller.onDotClicked,
                          count: controller.onBoardingItems.length,
                          activeIndex: controller.currentIndex.value,
                          effect: const ExpandingDotsEffect(
                            offset: 8,
                            dotWidth: 16,
                            dotHeight: 8,
                            dotColor: AppColor.grey,
                            activeDotColor: AppColor.primaryMain,
                          ),
                        )),
                    const SizedBox(height: Dimensions.space3),
                    AppButton(
                      text: 'Get Started',
                      onTap: controller.navigateToMain,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
