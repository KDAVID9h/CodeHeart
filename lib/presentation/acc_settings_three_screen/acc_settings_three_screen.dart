import '../../widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/custom_switch.dart';
import 'models/acc_settings_three_model.dart';
import 'provider/acc_settings_three_provider.dart';

class AccSettingsThreeScreen extends StatefulWidget {
  const AccSettingsThreeScreen({Key? key}) : super(key: key);

  @override
  AccSettingsThreeScreenState createState() => AccSettingsThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccSettingsThreeProvider(),
      child: const AccSettingsThreeScreen(),
    );
  }
}

class AccSettingsThreeScreenState extends State<AccSettingsThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pink50,
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 72.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_notification".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ],
            ),
            SizedBox(height: 84.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 58.h, right: 54.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_sound".tr,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                  Selector<AccSettingsThreeProvider, bool?>(
                    selector: (context, provider) => provider.isSelectedSwitch,
                    builder: (context, isSelectedSwitch, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch,
                        onChange: (value) {
                          context
                              .read<AccSettingsThreeProvider>()
                              .changeSwitchBox(value);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.red20001),
            ),
            SizedBox(height: 26.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 58.h, right: 54.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_vibrate".tr,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                  Selector<AccSettingsThreeProvider, bool?>(
                    selector: (context, provider) => provider.isSelectedSwitch1,
                    builder: (context, isSelectedSwitch1, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch1,
                        onChange: (value) {
                          context
                              .read<AccSettingsThreeProvider>()
                              .changeSwitchBox1(value);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.red20001, endIndent: 2.h),
            ),
            SizedBox(height: 22.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 54.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_chat_alert".tr,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                  Selector<AccSettingsThreeProvider, bool?>(
                    selector: (context, provider) => provider.isSelectedSwitch2,
                    builder: (context, isSelectedSwitch2, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch2,
                        onChange: (value) {
                          context
                              .read<AccSettingsThreeProvider>()
                              .changeSwitchBox2(value);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.red20001),
            ),
            SizedBox(height: 20.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 54.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_mute_chat".tr,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                  Selector<AccSettingsThreeProvider, bool?>(
                    selector: (context, provider) => provider.isSelectedSwitch3,
                    builder: (context, isSelectedSwitch3, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch3,
                        onChange: (value) {
                          context
                              .read<AccSettingsThreeProvider>()
                              .changeSwitchBox3(value);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.red20001),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.h,
      leadingWidth: 57.h,
      leading: AppbarLeadingIconButton(
        imagePath: ImageConstant.imgIcon36x36,
        height: 36.h,
        width: 36.h,
        margin: EdgeInsets.only(left: 21.h),
        onTap: () {
          _onTapIconOne(context);
        },
      ),
    );
  }

  void _onTapIconOne(BuildContext context) {
    NavigatorService.goBack();
  }
}
