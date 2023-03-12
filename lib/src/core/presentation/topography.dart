import 'package:flutter/material.dart';
import 'package:travel_tips/src/core/domain/constants.dart';
import 'package:travel_tips/src/core/presentation/colors.dart';

class AppTypography {
  AppTypography._();

  //* Appbar title textstyle
  static const appBarTitleTextStyle = TextStyle(
    fontSize: Constants.appBarFontSize,
    fontWeight: FontWeight.w500,
    fontFamily: Constants.fontFamily,
  );

  //* Title textstyle
  static const extraLargeTitleTextStyle = TextStyle(
    fontSize: Constants.extraLargeTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );
  static const largeTitleTextStyle = TextStyle(
    fontSize: Constants.largeTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const mediumTitleTextStyle = TextStyle(
    fontSize: Constants.mediumTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const smallTitleTextStyle = TextStyle(
    fontSize: Constants.smallTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );
  static const extraSmallTitleTextStyle = TextStyle(
    fontSize: Constants.extraSmallTitleFontSize,
    color: AppColors.primaryLightFontColor,
  );

  //* Body textstyle
  static const largeBodyTextStyle = TextStyle(
    fontSize: Constants.largeBodyFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const mediumBodyTextStyle = TextStyle(
    fontSize: Constants.mediumBodyFontSize,
    color: AppColors.primaryLightFontColor,
  );

  static const smallBodyTextStyle = TextStyle(
    fontSize: Constants.smallBodyFontSize,
    color: AppColors.primaryLightFontColor,
  );

  //* Tab bar label textstyle
  static const tabBarLabelTextStyle = TextStyle(
    fontSize: Constants.largeBodyFontSize,
    fontWeight: FontWeight.bold,
    fontFamily: Constants.fontFamily,
    color: AppColors.primaryColor,
  );

  static const tabBarLabelUnselectedTextStyle = TextStyle(
    fontSize: Constants.largeBodyFontSize,
    fontWeight: FontWeight.bold,
    fontFamily: Constants.fontFamily,
    color: AppColors.secondaryLightFontColor,
  );
}
