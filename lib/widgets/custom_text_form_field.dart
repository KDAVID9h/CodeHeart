import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../core/app_export.dart';

extension TextFormFieldStyleHelper on CustomTextFormField {
  static GradientOutlineInputBorder get outlineTL28 =>
      GradientOutlineInputBorder(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(key: key);

  final AlignmentGeometry? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextStyle? textStyle;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? AlignmentDirectional.center,
            child: textFormFieldWidget(context),
          )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => Container(
        width: width ?? double.maxFinite,
        decoration: boxDecoration,
        child: TextFormField(
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (event) {
            if (focusNode != null) {
              focusNode?.unfocus();
            } else {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          autofocus: autofocus,
          style: textStyle ?? theme.textTheme.titleLarge,
          obscureText: obscureText,
          readOnly: readOnly,
          onTap: () {
            onTap?.call();
          },
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.titleLarge,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsetsDirectional.all(18.h),
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
