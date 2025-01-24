import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientOnPrimaryContainerToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.99),
        borderRadius: BorderRadius.circular(34.h),
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

  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL22 =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get outlineRedTL48 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.99),
        borderRadius: BorderRadius.circular(48.h),
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

  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL14 =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(14.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.decoration,
    this.padding,
    this.onTap,
    this.child,
  }) : super(key: key);

  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? AlignmentDirectional.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                color: appTheme.red50,
                borderRadius: BorderRadius.circular(12.h),
                boxShadow: [
                  BoxShadow(
                    color:
                        theme.colorScheme.secondaryContainer.withOpacity(0.25),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
          child: IconButton(
            padding: padding ?? EdgeInsetsDirectional.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
