import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/acc_settings_five_model.dart';

/// A provider class for the AccSettingsFiveBottomsheet.
/// This provider manages the state of the AccSettingsFiveBottomsheet, including the
/// current accSettingsFiveModelObj

// ignore_for_file: must_be_immutable
class AccSettingsFiveProvider extends ChangeNotifier {
  AccSettingsFiveModel accSettingsFiveModelObj = AccSettingsFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
