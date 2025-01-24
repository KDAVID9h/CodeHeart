import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(key: key);

  Country country;
  Function(Country) onTap;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(24.h),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPlus,
                    height: 16.h,
                    width: 16.h,
                    margin: EdgeInsets.only(left: 12.h, bottom: 10.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.h,
                    width: 24.h,
                    margin: EdgeInsets.only(left: 22.h, bottom: 4.h),
                  ),
                  Text(
                    "lbl2".tr,
                    style: CustomTextStyles
                        .displaySmallSansationLightSecondaryContainer,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 256.h,
              child: TextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 10.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(left: 10.h),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );

  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search ... ',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text(
            'Select your phone code',
            style: TextStyle(fontSize: 14.fSize),
          ),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
