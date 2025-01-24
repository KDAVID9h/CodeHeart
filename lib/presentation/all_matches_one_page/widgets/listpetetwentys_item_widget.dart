import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listpetetwentys_item_model.dart';

// ignore_for_file: must_be_immutable
class ListpetetwentysItemWidget extends StatelessWidget {
  final ListpetetwentysItemModel listpetetwentysItemModelObj;

  ListpetetwentysItemWidget(this.listpetetwentysItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: listpetetwentysItemModelObj.petetwentyseven!,
            height: 200.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(34.h),
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: Text(
              listpetetwentysItemModelObj.peteCounter!,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeBold,
            ),
          ),
        ],
      ),
    );
  }
}
