import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientOnPrimaryContainerToPrimaryDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        border: Border.all(
          color: appTheme.pink50,
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL26Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(26.h),
        border: Border.all(
          color: appTheme.pink50,
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL30Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        border: GradientBoxBorder(
          width: 2.h,
          gradient: LinearGradient(
            begin: Alignment(1.0, 1),
            end: Alignment(0.0, 0),
            colors: [
              theme.colorScheme.onPrimaryContainer,
              theme.colorScheme.primary,
            ],
          ),
        ),
      );

  // Outline button style
  static BoxDecoration get outlineDecoration => BoxDecoration(
        color: appTheme.red50,
        borderRadius: BorderRadius.circular(30.h),
        border: GradientBoxBorder(
          width: 2.h,
          gradient: LinearGradient(
            begin: Alignment(1.0, 1),
            end: Alignment(0.0, 0),
            colors: [
              theme.colorScheme.onPrimaryContainer,
              theme.colorScheme.primary,
            ],
          ),
        ),
      );

  static BoxDecoration get outlineTL30Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        border: GradientBoxBorder(
          width: 2.h,
          gradient: LinearGradient(
            begin: Alignment(1.0, 1),
            end: Alignment(0.0, 0),
            colors: [
              theme.colorScheme.onPrimaryContainer,
              theme.colorScheme.primary,
            ],
          ),
        ),
      );

  // Text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        elevation: WidgetStateProperty.all<double>(0),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsetsDirectional.zero,
        ),
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(color: Colors.transparent),
        ),
      );
}
