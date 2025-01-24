import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get sansationLight => copyWith(
        fontFamily: 'Samsation Light',
      );

  TextStyle get sansitaOne => copyWith(
        fontFamily: 'Sansita One',
      );
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily
/// apply specific font families to text.
class CustomTextStyles {
  // Body text styles
  static TextStyle get bodyLarge16 =>
      theme.textTheme.bodyLarge!.copyWith(fontSize: 16.fSize);

  static TextStyle get bodyLarge18 =>
      theme.textTheme.bodyLarge!.copyWith(fontSize: 18.fSize);

  static TextStyle get bodyLarge18_1 =>
      theme.textTheme.bodyLarge!.copyWith(fontSize: 18.fSize);

  static TextStyle get bodyLarge19 =>
      theme.textTheme.bodyLarge!.copyWith(fontSize: 19.fSize);

  static TextStyle get bodyLargeOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );

  static TextStyle get bodyLargeSecondaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.45),
        fontSize: 19.fSize,
      );

  // Display text styles
  static TextStyle get displayLarge51 =>
      theme.textTheme.displayLarge!.copyWith(fontSize: 51.fSize);

  static TextStyle get displayMediumBold =>
      theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get displayMediumBold47 =>
      theme.textTheme.displayMedium!.copyWith(
        fontSize: 47.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get displayMediumLight =>
      theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get displayMediumLight47 =>
      theme.textTheme.displayMedium!.copyWith(
        fontSize: 47.fSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get displayMediumLight47_1 =>
      theme.textTheme.displayMedium!.copyWith(
        fontSize: 47.fSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get displayMediumLight48 =>
      theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get displayMediumWhiteA700 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 48.fSize,
      );

  static TextStyle get displaySmallSansationLightSecondaryContainer =>
      theme.textTheme.displaySmall!.sansationLight.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 38.fSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get displaySmallSecondaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );

  // Headline text styles
  static TextStyle get headlineLargeSansitaOne =>
      theme.textTheme.headlineLarge!.sansitaOne.copyWith(
        fontSize: 31.fSize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get headlineMedium27 =>
      theme.textTheme.headlineMedium!.copyWith(fontSize: 27.fSize);

  static TextStyle get headlineMediumLight =>
      theme.textTheme.headlineMedium!.copyWith(
        fontSize: 29.fSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get headlineMediumOnPrimaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static TextStyle get headlineMediumOnSecondaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );

  static TextStyle get headlineMediumPink38 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.pink300,
        fontSize: 27.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headlineMediumRegular =>
      theme.textTheme.headlineMedium!.copyWith(
        fontSize: 27.fSize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get headlineMediumRegular_1 =>
      theme.textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w400);

  static TextStyle get headlineMediumSemiBold =>
      theme.textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600);

  static TextStyle get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );

  // Sansita text styles
  static TextStyle get sansitaOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 120.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Sansita One',
      );

  static TextStyle get sansitaOnPrimaryContainerRegular => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 70.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Sansita One',
      );

  static TextStyle get sansitaOnPrimaryContainerRegular79 => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 79.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Sansita One',
      );

  // Title text styles
  static TextStyle get titleLarge20 =>
      theme.textTheme.titleLarge!.copyWith(fontSize: 20.fSize);

  static TextStyle get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeBold23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeBold_1 =>
      theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get titleLargeBold2 =>
      theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get titleLargeGray588 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 20.fSize,
      );

  static TextStyle get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeOnPrimaryContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeOnPrimaryContainerBold28 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.45),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleLargePink38881 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.pink30001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeRedA709 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeWhiteA700 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumSemiBold17 =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallSemiBold =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600);
}
