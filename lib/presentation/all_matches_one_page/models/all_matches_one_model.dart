import '../../../core/app_export.dart';
import 'listdannytwenty_item_model.dart';
import 'listpetetwentys_item_model.dart';

// ignore_for_file: must_be_immutable
class AllMatchesOneModel {
  List<ListdannytwentyItemModel> listdannytwentyItemList = [
    ListdannytwentyItemModel(
      dannytwentynine: ImageConstant.imgImage9200x150,
      dannyCounter: "lbl_danny_29".tr,
    ),
    ListdannytwentyItemModel(
      dannytwentynine: ImageConstant.imgImage10200x150,
      dannyCounter: "lbl_chris_27".tr,
    ),
    ListdannytwentyItemModel(
      dannytwentynine: ImageConstant.imgImage11200x150,
      dannyCounter: "lbl_mike".tr,
    ),
  ];

  List<ListpetetwentysItemModel> listpetetwentysItemList = [
    ListpetetwentysItemModel(
      petetwentyseven: ImageConstant.imgImage12200x150,
      peteCounter: "lbl_pete_27".tr,
    ),
    ListpetetwentysItemModel(
      petetwentyseven: ImageConstant.imgImage13200x150,
      peteCounter: "lbl_taro_26".tr,
    ),
    ListpetetwentysItemModel(
      petetwentyseven: ImageConstant.imgImage14,
      peteCounter: "lbl_john2".tr,
    ),
  ];
}
