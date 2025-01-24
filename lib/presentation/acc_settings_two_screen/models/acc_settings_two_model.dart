import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

// ignore_for_file: must_be_immutable
class AccSettingsTwoModel {
  // List of items for the first dropdown
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
      isSelected: false,
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
      isSelected: false,
    ),
  ];

  // List of items for the second dropdown
  List<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
      isSelected: false,
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
      isSelected: false,
    ),
  ];
}
