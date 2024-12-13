import 'package:fin_money/core/constants/app_style.dart';
import 'package:fin_money/core/constants/dimensions.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final Color color;

  const Header({
    super.key,
    required this.title,
    this.color = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.space2),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: AppStyle.title.bold,
      ),
    );
  }
}
