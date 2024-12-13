import 'package:fin_money/core/constants/assets.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const AppLogo({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.appIcon,
      width: width ?? 80,
      height: height ?? 80,
    );
  }
}
