import 'package:fin_money/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnotatedStatusBar extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Brightness? brightness;

  const AnnotatedStatusBar({
    super.key,
    required this.child,
    this.color,
    this.brightness,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: color ?? AppColor.systemOverlayColor,
        statusBarBrightness: brightness ?? Brightness.dark, // For iOS
        statusBarIconBrightness: Brightness.dark, // For Android
        systemNavigationBarColor: AppColor.systemOverlayColor,
        systemNavigationBarIconBrightness: brightness ?? Brightness.dark,
      ),
      child: child,
    );
  }
}
