import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_icon_button.dart';

class AppbarLeadingIconButton extends StatelessWidget {
  AppbarLeadingIconButton({
    Key? key,
    this.imagePath,
    this.height,
    this.width,
    this.onTap,
    this.margin,
  }) : super(key: key);

  final double? height;
  final double? width;
  final String? imagePath;
  final Function? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: CustomIconButton(
          height: height ?? 52.h,
          width: width ?? 52.h,
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(
            imagePath: imagePath ?? ImageConstant.imgIcon36x36,
          ),
        ),
      ),
    );
  }
}
