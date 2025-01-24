import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/acc_settings_four_model.dart';

/// A provider class for the AccSettingsFourScreen.
/// This provider manages the state of the AccSettingsFourScreen, including the
/// current accSettingsFourModelObj

// ignore_for_file: must_be_immutable
class AccSettingsFourProvider extends ChangeNotifier {
  AccSettingsFourModel accSettingsFourModelObj = AccSettingsFourModel();

  bool isSelectedSwitch = false;
  bool isSelectedSwitch1 = false;
  bool isSelectedSwitch2 = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }
}
