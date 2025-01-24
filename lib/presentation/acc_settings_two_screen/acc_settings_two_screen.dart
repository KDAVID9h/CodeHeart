import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../../core/app_export.dart';
import '../../../core/utils/validation_functions.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../../../widgets/custom_phone_number.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'models/acc_settings_two_model.dart';
import 'provider/acc_settings_two_provider.dart';

class AccSettingsTwoScreen extends StatefulWidget {
  const AccSettingsTwoScreen({Key? key}) : super(key: key);

  @override
  AccSettingsTwoScreenState createState() => AccSettingsTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccSettingsTwoProvider(),
      child: AccSettingsTwoScreen(),
    );
  }
}

class AccSettingsTwoScreenState extends State<AccSettingsTwoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pink50,
      appBar: buildAppBar(context),
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(34.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8.h),
                  Text(
                    "lbl_edit_profile".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 28.h),
                  buildNameField(context),
                  SizedBox(height: 22.h),
                  buildRowGender(context),
                  SizedBox(height: 22.h),
                  buildColumnPhoneNumber(context),
                  SizedBox(height: 22.h),
                  buildColumnEmail(context),
                  SizedBox(height: 64.h),
                  buildSaveChangesButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section: AppBar
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.h,
      leadingWidth: 57.h,
      leading: AppbarLeadingIconButton(
        imagePath: ImageConstant.imgIcon36x36,
        height: 36.h,
        width: 36.h,
        margin: EdgeInsets.only(left: 21.h),
        onTap: () {
          onTapIconOne(context);
        },
      ),
    );
  }

  /// Section: Name Field
  Widget buildNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Selector<AccSettingsTwoProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameThreeController,
        builder: (context, nameController, child) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_victoria".tr,
            hintStyle: CustomTextStyles.titleLarge20,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.h),
          );
        },
      ),
    );
  }

  /// Section: Gender Dropdown
  Widget buildRowGender(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 6.h),
      child: Row(
        children: [
          Expanded(
            child: Selector<AccSettingsTwoProvider, AccSettingsTwoModel?>(
              selector: (context, provider) => provider.accSettingsTwoModelObj,
              builder: (context, accSettingsTwoModelObj, child) {
                return CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.only(left: 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 24.h,
                      width: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  iconSize: 24.h,
                  hintText: "lbl_female".tr,
                  items: accSettingsTwoModelObj?.dropdownItemList ?? [],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.h),
                );
              },
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Selector<AccSettingsTwoProvider, AccSettingsTwoModel?>(
              selector: (context, provider) => provider.accSettingsTwoModelObj,
              builder: (context, accSettingsTwoModelObj, child) {
                return CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.only(left: 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 24.h,
                      width: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  iconSize: 24.h,
                  hintText: "lbl_27".tr,
                  items: accSettingsTwoModelObj?.dropdownItemList1 ?? [],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.h),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section: Phone Number
  Widget buildColumnPhoneNumber(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_phone_no".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeRedA709,
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: double.infinity,
            child: buildPhoneNumber(context),
          ),
        ],
      ),
    );
  }

  Widget buildPhoneNumber(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Consumer<AccSettingsTwoProvider>(
        builder: (context, provider, child) {
          return CustomPhoneNumber(
            country: provider.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: provider.phoneNumberController,
            onTap: (Country value) {
              context.read<AccSettingsTwoProvider>().changeCountry(value);
            },
          );
        },
      ),
    );
  }

  /// Section: Email
  Widget buildColumnEmail(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_email".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeBold,
            ),
          ),
          SizedBox(height: 6.h),
          buildEmailField(context),
        ],
      ),
    );
  }

  Widget buildEmailField(BuildContext context) {
    return Selector<AccSettingsTwoProvider, TextEditingController?>(
      selector: (context, provider) => provider.emailTwoController,
      builder: (context, emailTwoController, child) {
        return CustomTextFormField(
          controller: emailTwoController,
          hintText: "lbl_vicky_gmail_com".tr,
          hintStyle: CustomTextStyles.titleLarge20,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.h),
          validator: (value) {
            if (value == null || !isValidEmail(value, isRequired: true)) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section: Save Changes Button
  Widget buildSaveChangesButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.only(right: 6.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientOnPrimaryContainerToPrimaryDecoration,
      // onTap: () {
      //   // Add your save changes logic here.
      // },
    );
  }

  /// Navigate back to the previous screen.
  void onTapIconOne(BuildContext context) {
    NavigatorService.goBack();
  }
}
