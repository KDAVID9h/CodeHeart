import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/acc_settings_one_model.dart';

/// A provider class for the AccSettingsOneScreen.
/// This provider manages the state of the AccSettingsOneScreen, including the
/// current accSettingsOneModelObj

// ignore_for_file: must_be_immutable
class AccSettingsOneProvider extends ChangeNotifier {
  AccSettingsOneModel accSettingsOneModelObj = AccSettingsOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
