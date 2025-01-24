import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../all_matches_one_page/all_matches_one_page.dart';
import '../home_nine_page/home_nine_page.dart';
import 'models/all_matches_three_model.dart';
import 'provider/all_matches_three_provider.dart';

class AllMatchesThreeScreen extends StatefulWidget {
  const AllMatchesThreeScreen({Key? key}) : super(key: key);

  @override
  AllMatchesThreeScreenState createState() => AllMatchesThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllMatchesThreeProvider(),
      child: const AllMatchesThreeScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class AllMatchesThreeScreenState extends State<AllMatchesThreeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.red50,
      appBar: buildAppBar(context),
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 34.h),
            child: Column(
              children: [
                Text(
                  "lbl_you_re_matched".tr,
                  style: CustomTextStyles.displaySmallSecondaryContainer,
                ),
                SizedBox(height: 4.h),
                buildStackSeventyFive(context),
                SizedBox(height: 44.h),
                CustomOutlinedButton(
                  text: "lbl_say_hi".tr,
                  margin: EdgeInsets.only(left: 56.h, right: 60.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles
                      .gradientOnPrimaryContainerToPrimaryDecoration,
                ),
                SizedBox(height: 12.h),
                CustomOutlinedButton(
                  text: "lbl_maybe_later".tr,
                  margin: EdgeInsets.only(left: 60.h, right: 58.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.outlineDecoration,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: buildBottomBar(context),
      ),
    );
  }

  /// AppBar section
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 92.h,
      leading: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 22.h, top: 24.h, bottom: 17.h),
        color: appTheme.whiteA700.withOpacity(0.99),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.red50,
            width: 4.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder34,
        ),
        child: Container(
          height: 78.h,
          width: 70.h,
          decoration: AppDecoration.outlineRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder34,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcon124x124,
                height: 48.h,
                width: 48.h,
                margin: EdgeInsets.fromLTRB(18.h, 18.h, 11.h, 11.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.img24BasicHeart,
                height: 16.h,
                width: 18.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(21.h, 24.h, 32.h, 29.h),
              ),
            ],
          ),
        ),
      ),
      title: Container(
        height: 111.h,
        width: 159.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(
          children: [
            AppbarSubtitle(
              text: "lbl_lov_search2".tr,
              margin: EdgeInsets.only(right: 27.h),
            ),
            AppbarTitle(
              text: "lbl_e".tr,
              margin: EdgeInsets.only(left: 69.h, right: 56.h),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgIcon124x124,
              margin: EdgeInsets.only(left: 61.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          margin: EdgeInsets.only(right: 23.h),
        ),
      ],
    );
  }

  /// Stack for display
  Widget buildStackSeventyFive(BuildContext context) {
    return Container(
      height: 334.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 14.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 248.h,
              width: 236.h,
              margin: EdgeInsets.only(bottom: 34.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse4138x134,
                    height: 248.h,
                    width: double.maxFinite,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse20,
                    height: 248.h,
                    width: double.maxFinite,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 242.h,
              width: 236.h,
              margin: EdgeInsets.only(right: 18.h, bottom: 34.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse19112x110,
                    height: 248.h,
                    width: double.maxFinite,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse20,
                    height: 248.h,
                    width: double.maxFinite,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 68.h,
            width: 70.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 14.h),
                    child: Text(
                      "lbl_75".tr,
                      style: CustomTextStyles.titleMediumSemiBold17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 68.h,
                  width: 68.h,
                  child: CircularProgressIndicator(
                    value: 0.79,
                    backgroundColor: appTheme.gray488,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTinyHearts,
            height: 154.h,
            width: double.maxFinite,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  /// Bottom navigation bar
  Widget buildBottomBar(BuildContext context) {
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

  /// Handling route based on bottom bar click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Arrowright:
        return AppRoutes.homeOneInitialPage;
      case BottomBarEnum.Group117:
        return AppRoutes.homeNinePage;
      case BottomBarEnum.basicheart:
        return "/";
      case BottomBarEnum.chatting:
        return "/";
      case BottomBarEnum.Group118:
        return AppRoutes.allMatchesOnePage;
      default:
        return "/";
    }
  }
}
