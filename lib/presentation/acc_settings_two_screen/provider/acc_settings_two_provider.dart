import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/acc_settings_two_model.dart';

/// A provider class for the AccSettingsTwoScreen.
///
/// This provider manages the state of the AccSettingsTwoScreen, including the
/// current accSettingsTwoModelObj and related functionality.
class AccSettingsTwoProvider extends ChangeNotifier {
  // Controllers for text fields
  TextEditingController nameThreeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailTwoController = TextEditingController();

  // Model to manage dropdowns and other data
  AccSettingsTwoModel accSettingsTwoModelObj = AccSettingsTwoModel();

  // Selected country for phone number
  Country? selectedCountry;

  /// Disposes controllers when the provider is destroyed.
  @override
  void dispose() {
    nameThreeController.dispose();
    phoneNumberController.dispose();
    emailTwoController.dispose();
    super.dispose();
  }

  /// Handles selection of an item from the first dropdown.
  void onSelected(dynamic value) {
    for (var element in accSettingsTwoModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  /// Handles selection of an item from the second dropdown.
  void onSelected1(dynamic value) {
    for (var element in accSettingsTwoModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  /// Changes the selected country for phone number input.
  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
