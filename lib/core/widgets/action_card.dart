import 'package:fin_money/core/constants/app_style.dart';
import 'package:fin_money/core/constants/colors.dart';
import 'package:fin_money/core/constants/dimensions.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final IconData iconData;
  final String title;
  final String subtitle;
  final bool enabled;

  const ActionCard({
    super.key,
    required this.onTap,
    required this.color,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.space1),
      child: InkWell(
        borderRadius: AppStyle.borderRadiusRoundedAllSides,
        onTap: enabled ? onTap : null,
        child: Ink(
          width: double.infinity,
          decoration: BoxDecoration(
            color: enabled ? color.withAlpha(0x08) : color.withAlpha(0x04),
            borderRadius: AppStyle.borderRadiusRoundedAllSides,
            border: Border.all(color: color, width: 0.1),
          ),
          padding: const EdgeInsets.all(Dimensions.space1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Ink(
                    decoration: BoxDecoration(
                      color: AppColor.background,
                      borderRadius: BorderRadius.circular(2000),
                    ),
                    child: Icon(
                      iconData,
                      size: Dimensions.iconSize,
                      color: enabled ? color : color.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.space2),
              Text(
                title,
                style: AppStyle.title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
