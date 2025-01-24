import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/acc_settings_three_model.dart';

/// A provider class for the AccSettingsThreeScreen.
///
/// This provider manages the state of the AccSettingsThreeScreen,
/// including the current `accSettingsThreeModelObj`.
class AccSettingsThreeProvider extends ChangeNotifier {
  AccSettingsThreeModel accSettingsThreeModelObj = AccSettingsThreeModel();

  bool isSelectedSwitch = false;
  bool isSelectedSwitch1 = false;
  bool isSelectedSwitch2 = false;
  bool isSelectedSwitch3 = false;

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

  void changeSwitchBox3(bool value) {
    isSelectedSwitch3 = value;
    notifyListeners();
  }
}
