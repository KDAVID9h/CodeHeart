import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import 'models/acc_settings_five_model.dart';
import 'provider/acc_settings_five_provider.dart';// ignore_for_file: must_be_immutable

class AccSettingsFiveBottomsheet extends StatefulWidget {
  const AccSettingsFiveBottomsheet({Key? key}) : super(key: key);

  @override
  AccSettingsFiveBottomsheetState createState() =>
      AccSettingsFiveBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccSettingsFiveProvider(),
      child: AccSettingsFiveBottomsheet(),
    );
  }
}

class AccSettingsFiveBottomsheetState
    extends State<AccSettingsFiveBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 30.h,
      ),
      decoration: AppDecoration.tabshadow.copyWith(
        borderRadius: BorderRadiusStyle.customBorderLR74,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.h),
          CustomImageView(
            imagePath: ImageConstant.imgLogout3,
            height: 42.h,
            width: 38.h,
          ),
          SizedBox(height: 40.h),
          Text(
            "msg_are_you_sure_you".tr,
            style: CustomTextStyles.titleLargeOnSecondaryContainer,
          ),
          SizedBox(height: 40.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(
                  width: 170.h,
                  text: "lbl_cancel".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.outlineTL30Decoration,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                CustomOutlinedButton(
                  width: 170.h,
                  text: "lbl_yes_logout".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles
                      .gradientOnPrimaryContainerToPrimaryTL30Decoration,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
