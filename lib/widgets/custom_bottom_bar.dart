import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'custom_icon_button.dart';

enum BottomBarEnum { Arrowright, Group117, basicheart, chatting, Group118 }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

/// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgArrowRight,
      activeIcon: ImageConstant.imgArrowRight,
      type: BottomBarEnum.Arrowright,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup117,
      activeIcon: ImageConstant.imgGroup117,
      type: BottomBarEnum.Group117,
    ),
    BottomMenuModel(
      icon: ImageConstant.img24BasicHeart,
      activeIcon: ImageConstant.img24BasicHeart,
      type: BottomBarEnum.basicheart,
    ),
    BottomMenuModel(
      icon: ImageConstant.img24Chatting,
      activeIcon: ImageConstant.img24Chatting,
      type: BottomBarEnum.chatting,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup118,
      activeIcon: ImageConstant.imgGroup118,
      type: BottomBarEnum.Group118,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(55.5.h),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomIconButton(
              height: 52.h,
              width: 52.h,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.none,
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
              ),
            ),
            activeIcon: CustomIconButton(
              height: 52.h,
              width: 52.h,
              padding: EdgeInsets.all(6.h),
              decoration:
                  IconButtonStyleHelper.gradientOnPrimaryContainerToPrimary,
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                color: appTheme.red50,
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

/// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;
  String activeIcon;
  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
