import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/appbar_title_image.dart';
import '../../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import 'models/all_matches_one_model.dart';
import 'models/listdannytwenty_item_model.dart';
import 'models/listpetetwentys_item_model.dart';
import 'provider/all_matches_one_provider.dart';
import 'widgets/listdannytwenty_item_widget.dart';
import 'widgets/listpetetwentys_item_widget.dart';

// ignore_for_file: must_be_immutable
class AllMatchesOnePage extends StatefulWidget {
  const AllMatchesOnePage({Key? key}) : super(key: key);

  @override
  AllMatchesOnePageState createState() => AllMatchesOnePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllMatchesOneProvider(),
      child: AllMatchesOnePage(),
    );
  }
}

class AllMatchesOnePageState extends State<AllMatchesOnePage> {
  @override
  void initState() {
    super.initState();
    // Additional initialization logic if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pink50,
      appBar: buildAppBar(context),
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 28.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRowNewMatch(context),
                SizedBox(height: 8.h),
                buildListDannyTwenty(context),
                SizedBox(height: 48.h),
                Container(
                  height: 28.h,
                  width: 378.h,
                  margin: EdgeInsets.only(left: 24.h, right: 22.h),
                ),
                SizedBox(height: 8.h),
                buildListPeteTwentys(context),
                SizedBox(height: 34.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// AppBar
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
          width: 78.h,
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
        margin: EdgeInsets.only(left: 28.h),
        child: Stack(
          children: [
            AppbarSubtitle(
              text: "lbl_love_search_2".tr,
              margin: EdgeInsets.only(right: 27.h),
            ),
            AppbarTitle(
              text: "lbl_o".tr,
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

  /// Section: Row for "Now Match 20"
  Widget buildRowNewMatch(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_now_match_20".tr,
            style: CustomTextStyles.titleLargeBold,
          ),
          Text(
            "lbl_see_all".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
        ],
      ),
    );
  }

  /// Section: List of "Danny Twenty"
  Widget buildListDannyTwenty(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.h),
      child: Consumer<AllMatchesOneProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 14.h,
              children: List.generate(
                provider.allMatchesOneModelObj.listdannytwentyItemList.length,
                (index) {
                  ListdannytwentyItemModel model = provider
                      .allMatchesOneModelObj.listdannytwentyItemList[index];
                  return ListdannytwentyItemWidget(
                    model,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  /// Section: List of "Pete Twentys"
  Widget buildListPeteTwentys(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.h),
      child: Consumer<AllMatchesOneProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 14.h,
              children: List.generate(
                provider.allMatchesOneModelObj.listpetetwentysItemList.length,
                (index) {
                  ListpetetwentysItemModel model = provider
                      .allMatchesOneModelObj.listpetetwentysItemList[index];
                  return ListpetetwentysItemWidget(
                    model,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
