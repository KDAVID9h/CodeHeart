import '../../../core/app_export.dart';

/// This class is used in the [listpetetwentys_item_widget] screen.

class ListpetetwentysItemModel {
  String? petetwentyseven;
  String? peteCounter;
  String? id;

  ListpetetwentysItemModel({this.petetwentyseven, this.peteCounter, this.id}) {
    petetwentyseven = petetwentyseven ?? ImageConstant.imgImage12200x150;
    peteCounter = peteCounter ?? "1bl_pete_27".tr;
    id = id ?? "";
  }
}
