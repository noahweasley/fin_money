import 'package:fin_money/core/utilities/size_config.dart';

extension SizeExtensions on num {
  double get h => SizeConfig.getHeight(toDouble());
  double get w => SizeConfig.getWidth(toDouble());
  double get sp => SizeConfig.getTextSize(toDouble());
}
