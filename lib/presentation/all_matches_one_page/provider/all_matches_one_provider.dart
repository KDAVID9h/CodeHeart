import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/all_matches_one_model.dart';
import '../models/listdannytwenty_item_model.dart';
import '../models/listpetetwentys_item_model.dart';

/// A provider class for the AllMatchesOnePage.
///
/// This provider manages the state of the AllMatchesOnePage, including the
/// current allMatchesOneModelObj.

/// This provider should be used with the ChangeNotifierProvider to notify
/// listeners when the state changes.
// ignore_for_file: must_be_immutable
class AllMatchesOneProvider extends ChangeNotifier {
  AllMatchesOneModel allMatchesOneModelObj = AllMatchesOneModel();

  @override
  void dispose() {
    super.dispose();
    // Dispose of any controllers or listeners if needed here.
  }
}
