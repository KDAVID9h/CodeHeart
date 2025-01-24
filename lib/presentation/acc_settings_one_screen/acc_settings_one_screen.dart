import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../all_matches_one_page/all_matches_one_page.dart';
import '../home_nine_page/home_nine_page.dart';
import 'models/acc_settings_one_model.dart';
import 'provider/acc_settings_one_provider.dart';

class AccSettingsOneScreen extends StatefulWidget {
  const AccSettingsOneScreen({Key? key}) : super(key: key);

  @override
  AccSettingsOneScreenState createState() => AccSettingsOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccSettingsOneProvider(),
      child: AccSettingsOneScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class AccSettingsOneScreenState extends State<AccSettingsOneScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            buildStacklovesearch(context),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.h,
                    right: 16.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12.h),
                      Text(
                        'lbl_vicky'.tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 24.h),
                      buildAowiconone(context),
                      SizedBox(height: 10.h),
                      buildAowtwntyfour(context),
                      SizedBox(height: 10.h),
                      buildAow24socurity(context),
                      SizedBox(height: 10.h),
                      buildAowlogoutthrea(context),
                      SizedBox(height: 10.h),
                      buildAow24basictrash(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: buildBottombar(context),
      ),
    );
  }

  Widget buildStacklovesearch(BuildContext context) {
    return SizedBox(
      height: 222.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 52.h),
              decoration: AppDecoration.pinkbg,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 70.h,
                    leadingWidth: 92.h,
                    leading: AppbarLeadingIconButtonOne(
                      imagePath: ImageConstant.imgIcon124x124,
                      height: 70.h,
                      width: 78.h,
                      margin: EdgeInsets.only(left: 22.h),
                    ),
                    actions: [
                      AppbarTrailingIconbuttonOne(
                        imagePath: ImageConstant.imgNotification,
                        height: 44.h,
                        width: 44.h,
                        margin: EdgeInsets.only(
                          top: 16.h,
                          right: 47.h,
                          bottom: 18.h,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse4,
                    height: 142.h,
                    width: 144.h,
                    radius: BorderRadius.circular(70.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAowiconone(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup118,
            height: 38.h,
            width: 40.h,
            margin: EdgeInsets.only(top: 6.h),
          ),
          Spacer(flex: 22),
          Text(
            "lbl_edit_profile".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          Spacer(flex: 77),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight24x24,
            height: 24.h,
            width: 26.h,
            margin: EdgeInsets.only(bottom: 18.h),
          ),
        ],
      ),
    );
  }

  Widget buildAowtwntyfour(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img24Notifications,
            height: 42.h,
            width: 44.h,
            alignment: Alignment.center,
          ),
          Spacer(flex: 25),
          Text(
            "lbl_notifications".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          Spacer(flex: 74),
          Container(
            height: 24.h,
            width: 26.h,
            margin: EdgeInsets.only(bottom: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight24x24,
                  height: 24.h,
                  width: 24.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAow24socurity(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img24Security42x42,
            height: 42.h,
            width: 44.h,
            margin: EdgeInsets.only(top: 4.h),
          ),
          Spacer(flex: 19),
          Text(
            "lbl_security".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          Spacer(flex: 80),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight24x24,
            height: 24.h,
            width: 26.h,
            margin: EdgeInsets.only(bottom: 10.h),
          ),
        ],
      ),
    );
  }

  Widget buildAowlogoutthrea(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogout3,
            height: 42.h,
            width: 38.h,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 2.h),
          ),
          Spacer(flex: 19),
          Text(
            "lbl_logout".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          Spacer(flex: 80),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight24x24,
            height: 24.h,
            width: 26.h,
            margin: EdgeInsets.only(bottom: 8.h),
          ),
        ],
      ),
    );
  }

  Widget buildAow24basictrash(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img24BasicTrash,
            height: 42.h,
            width: 44.h,
            alignment: Alignment.center,
          ),
          Spacer(flex: 38),
          Text(
            "lbl_delete_account".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          Spacer(flex: 69),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight24x24,
            height: 24.h,
            width: 26.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 8.h),
          ),
        ],
      ),
    );
  }

  Widget buildBottombar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
            navigatorKey.currentContext!,
            getCurrentRoute(type),
          );
        },
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Arrowright:
        return AppRoutes.homeOneInitialPage;
      case BottomBarEnum.Group117:
        return AppRoutes.homeNinePage;
      case BottomBarEnum.basicheart:
        return '/';
      case BottomBarEnum.chatting:
        return '/';
      case BottomBarEnum.Group118:
        return AppRoutes.allMatchesOnePage;
      default:
        return '/';
    }
  }
}
