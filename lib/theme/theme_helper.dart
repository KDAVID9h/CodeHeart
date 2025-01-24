import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> supportedCustomColors = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> supportedColorSchemes = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors getThemeColors() {
    return supportedCustomColors[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData getThemeData() {
    ColorScheme colorScheme =
        supportedColorSchemes[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.pink50,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsetsDirectional.zero,
        ),
        
      ),
      
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => getThemeData();
}

// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 17.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 14.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 60.fSize,
          fontFamily: "Sansita One",
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 46.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 39.fSize,
          fontFamily: "Sansita One",
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 33.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 28.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 25.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 22.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 18.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 15.fSize,
          fontFamily: "Source Sans Pro",
          fontWeight: FontWeight.w700,
        ),
      );
}

// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFFF157A4),
    secondaryContainer: Color(0xFF008888),
    onPrimary: Color(0xAA181818),
    onPrimaryContainer: Color(0xFFFD7BBC),
    onSecondaryContainer: Color(0xFF3A3335),
  );
}

// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black9003f => Color(0xFF888808);

  // BlueGray
  Color get blueGray88 => Color(0xFFEBEEF2);

  // Gray
  Color get gray388 => Color(0xFFE3E4EB);
  Color get gray488 => Color(0xFFC4C4C4);
  Color get gray500 => Color(0xFF9C9C9C);

  // LightGreen
  Color get lightGreenA700 => Color(0xFF3DF944);

  // Pink
  Color get pink300 => Color(0xFFF76898);
  Color get pink30001 => Color(0xFFF96C95);
  Color get pink50 => Color(0xFFFFE1EC);

  // Red
  Color get red200 => Color(0xFFCA98A6);
  Color get red20001 => Color(0xFFCB98A7);
  Color get red50 => Color(0xFFFFF2F2);
  Color get redA700 => Color(0xFFFF0000);

  // White
  Color get whiteA700 => Color(0xFFFFFFFF);
}
