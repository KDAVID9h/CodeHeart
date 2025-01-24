import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
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
        child: IconButton(
          onPressed: () {},
          constraints: BoxConstraints(
            minHeight: 52.h,
            minWidth: 52.h,
          ),
          padding: EdgeInsets.zero,
          icon: SizedBox(
            width: 52.h,
            height: 52.h,
            child: CustomImageView(
              imagePath: ImageConstant.imageNotFound,
            ),
          ),
        ),
      ),
    );
  }
}
