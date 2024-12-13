import 'package:fin_money/core/constants/app_style.dart';
import 'package:fin_money/core/constants/dimensions.dart';
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  final String text;
  const EmptyList({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.hourglass_empty),
          const SizedBox(height: Dimensions.space3),
          Text(
            text,
            style: AppStyle.title.bold,
          ),
        ],
      ),
    );
  }
}
