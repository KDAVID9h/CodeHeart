import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../core/app_export.dart';
import '../data/models/selectionPopupModel/selection_popup_model.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.focusNode,
    this.icon,
    this.iconSize,
    this.autofocus = false,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.items,
    this.prefix,
    this.prefixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final AlignmentGeometry? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final FocusNode? focusNode;
  final Widget? icon;
  final double? iconSize;
  final bool autofocus;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final List<SelectionPopupModel>? items;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final Function(SelectionPopupModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? AlignmentDirectional.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
        width: width ?? double.maxFinite,
        decoration: boxDecoration,
        child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode,
          icon: icon,
          iconSize: iconSize ?? 24,
          autofocus: autofocus,
          isExpanded: true,
          style: textStyle ?? CustomTextStyles.titleLarge20,
          hint: Text(
            hintText ?? "",
            style: hintStyle ?? CustomTextStyles.titleLarge20,
            overflow: TextOverflow.ellipsis,
          ),
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ?? CustomTextStyles.titleLarge20,
              ),
            );
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: (value) {
            onChanged!(value!);
          },
        ),
      );

  InputDecoration get decoration => InputDecoration(
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsetsDirectional.all(8.h),
        fillColor: fillColor ?? appTheme.whiteA700,
        filled: filled,
        border: borderDecoration ??
            GradientOutlineInputBorder(
              borderRadius: BorderRadius.circular(22.h),
              gradient: LinearGradient(
                begin: Alignment(1.0, 1),
                end: Alignment(0.0, 0),
                colors: [
                  theme.colorScheme.onPrimaryContainer,
                  theme.colorScheme.primary,
                ],
              ),
            ),
        enabledBorder: borderDecoration ??
            GradientOutlineInputBorder(
              borderRadius: BorderRadius.circular(22.h),
              gradient: LinearGradient(
                begin: Alignment(1.0, 1),
                end: Alignment(0.0, 0),
                colors: [
                  theme.colorScheme.onPrimaryContainer,
                  theme.colorScheme.primary,
                ],
              ),
            ),
        focusedBorder: (borderDecoration ??
                GradientOutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.h),
                  gradient: LinearGradient(
                    begin: Alignment(1.0, 1),
                    end: Alignment(0.0, 0),
                    colors: [
                      theme.colorScheme.onPrimaryContainer,
                      theme.colorScheme.primary,
                    ],
                  ),
                ))
            .copyWith(
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 1,
          ),
        ),
      );
}
