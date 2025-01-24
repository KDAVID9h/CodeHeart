import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/all_matches_three_model.dart';

/// A provider class for the AllMatchesThreeScreen.
/// This provider manages the state of the AllMatchesThreeScreen, including the
/// current allMatchesThreeModelObj.

// ignore_for_file: must_be_immutable
class AllMatchesThreeProvider extends ChangeNotifier {
  AllMatchesThreeModel allMatchesThreeModelObj = AllMatchesThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
