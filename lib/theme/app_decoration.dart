import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Babypink decorations
  static BoxDecoration get babypink => BoxDecoration(
        color: appTheme.red50,
      );

  // Buttons decorations
  static BoxDecoration get buttons => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Fill decorations
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.red50.withOpacity(0.45),
      );

  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.99),
        border: Border.all(
          color: appTheme.red50,
          width: 4.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        color: appTheme.red50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get outlineSecondaryContainer1 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 0),
          ),
        ],
      );

  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.whiteA700,
      );

  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get outline3 => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Pinkbg decorations
  static BoxDecoration get pinkbg => BoxDecoration(
        color: appTheme.pink50,
      );

  // Tabshadow decorations
  static BoxDecoration get tabshadow => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Stack decorations
  static BoxDecoration get stack4 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgIcon72x72),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack7 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.img24BasicHeart),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack9 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.img24BasicHeart),
          fit: BoxFit.fill,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder122 => BorderRadius.circular(122.h);

  static BorderRadius get circleBorder42 => BorderRadius.circular(42.h);

  // Custom borders
  static BorderRadius get customBorderLR74 => BorderRadius.only(
        topLeft: Radius.circular(60.h),
        topRight: Radius.circular(74.h),
      );

  static BorderRadius get customBorderTL54 => BorderRadius.vertical(
        top: Radius.circular(54.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(12.h);

  static BorderRadius get roundedBorder16 => BorderRadius.circular(16.h);

  static BorderRadius get roundedBorder20 => BorderRadius.circular(20.h);

  static BorderRadius get roundedBorder34 => BorderRadius.circular(34.h);

  static BorderRadius get roundedBorder38 => BorderRadius.circular(38.h);

  static BorderRadius get roundedBorder46 => BorderRadius.circular(46.h);

  static BorderRadius get roundedBorder70 => BorderRadius.circular(70.h);

  static BorderRadius get roundedBorder88 => BorderRadius.circular(88.h);
}
