import '../../../core/app_export.dart';

/// This class is used in the [listdannytwenty_item_widget] screen.

class ListdannytwentyItemModel {
  String? dannytwentynine;
  String? dannyCounter;
  String? id;

  ListdannytwentyItemModel({this.dannytwentynine, this.dannyCounter, this.id}) {
    dannytwentynine = dannytwentynine ?? ImageConstant.imgImage9200x150;
    dannyCounter = dannyCounter ?? "1bl_danny_29".tr;
    id = id ?? "";
  }
}
