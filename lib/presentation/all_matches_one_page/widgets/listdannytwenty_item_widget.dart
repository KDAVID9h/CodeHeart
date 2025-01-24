import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdannytwenty_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdannytwentyItemWidget extends StatelessWidget {
  final ListdannytwentyItemModel listdannytwentyItemModelObj;

  ListdannytwentyItemWidget(this.listdannytwentyItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: listdannytwentyItemModelObj.dannytwentynine!,
            height: 200.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(34.h),
          ),
          SizedBox(height: 6.h),
          Text(
            listdannytwentyItemModelObj.dannyCounter!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleLargeBold,
          ),
        ],
      ),
    );
  }
}
