import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_color.dart';
import 'text_styles.dart';

/// Dark theme configuration
class DarkTheme {
  // Private constructor to prevent instantiation
  DarkTheme._();

  /// Get dark theme data
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Color Scheme
      colorScheme: _colorScheme,

      // Scaffold
      scaffoldBackgroundColor: _colorScheme.surface,

      // AppBar Theme
      appBarTheme: _appBarTheme,

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: _bottomNavigationBarTheme,

      // Input Decoration Theme
      inputDecorationTheme: _inputDecorationTheme,

      // Elevated Button Theme
      elevatedButtonTheme: _elevatedButtonTheme,

      // Text Button Theme
      textButtonTheme: _textButtonTheme,

      // Icon Theme
      iconTheme: _iconTheme,

      // Divider Theme
      dividerTheme: _dividerTheme,

      // Text Theme
      textTheme: _textTheme,
    );
  }

  /// Color Scheme
  static ColorScheme get _colorScheme {
    const colorScheme = ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.electricBlue,
      surface: AppColors.blackColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      // Use darker gray for containers in dark theme - better contrast than mediumGray
      surfaceContainerHighest: AppColors.inkBlack,
      error: AppColors.errorRed,
      onError: Colors.white,
    );
    return colorScheme;
  }

  /// AppBar Theme
  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      backgroundColor: _colorScheme.surface,
      foregroundColor: _colorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyles.font18TwilightPurpleSemiBold.copyWith(
        fontSize: 17,
        color: _colorScheme.onSurface,
        height: 1.1,
      ),
      iconTheme: IconThemeData(color: _colorScheme.onSurface),
    );
  }

  /// Bottom Navigation Bar Theme
  static BottomNavigationBarThemeData get _bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: _colorScheme.surface,
      selectedItemColor: _colorScheme.primary,
      // Use lighter opacity for better visibility on dark background
      unselectedItemColor: _colorScheme.onSurface.withAlpha(180),
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedLabelStyle: TextStyles.font12CloudWhiteMeduim.copyWith(
        color: _colorScheme.primary,
      ),
      // Use theme color instead of hardcoded smokeGray for better adaptation
      unselectedLabelStyle: TextStyles.font12SmokeGrayRegular.copyWith(
        color: _colorScheme.onSurface.withAlpha(180),
      ),
    );
  }

  /// Input Decoration Theme
  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: _colorScheme.surfaceContainerHighest,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _colorScheme.primary, width: 1.5),
      ),
      hintStyle: TextStyles.font14SmokeGrayRegular.copyWith(
        fontSize: 15,
        // Use slightly higher opacity for better visibility in dark theme
        color: _colorScheme.onSurface.withAlpha(180),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    );
  }

  /// Elevated Button Theme
  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _colorScheme.primary,
        foregroundColor: _colorScheme.onPrimary,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: TextStyles.font18SnowWhiteBold.copyWith(
          fontSize: 17,
          height: 1.1,
        ),
      ),
    );
  }

  /// Text Button Theme
  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _colorScheme.primary,
        textStyle: TextStyles.font14TwilightPurpleMeduim.copyWith(fontSize: 15),
      ),
    );
  }

  /// Icon Theme
  static IconThemeData get _iconTheme {
    return IconThemeData(color: _colorScheme.onSurface, size: 24);
  }

  /// Divider Theme
  static DividerThemeData get _dividerTheme {
    return DividerThemeData(
      color: _colorScheme.surfaceContainerHighest,
      thickness: 1,
      space: 1,
    );
  }

  /// Text Theme
  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: TextStyles.font32DeepForestBold.copyWith(
        fontSize: 34,
        color: _colorScheme.onSurface,
        height: 1.1,
      ),
      displayMedium: TextStyles.font28SnowWhiteBold.copyWith(
        color: _colorScheme.onSurface,
        height: 1.1,
      ),
      displaySmall: TextStyles.font20PrimaryBold.copyWith(
        fontSize: 22,
        color: _colorScheme.onSurface,
        height: 1.1,
      ),
      headlineMedium: TextStyles.font18TwilightPurpleSemiBold.copyWith(
        fontSize: 17,
        color: _colorScheme.onSurface,
        height: 1.1,
      ),
      bodyLarge: TextStyles.font16MediumGrayRegular.copyWith(
        fontSize: 17,
        // Ensure body text is readable on dark background
        color: _colorScheme.onSurface.withAlpha(230),
        height: 1.4,
      ),
      bodyMedium: TextStyles.font14SmokeGrayRegular.copyWith(
        fontSize: 15,
        // Use full opacity white for medium body text
        color: _colorScheme.onSurface,
        height: 1.4,
      ),
      bodySmall: TextStyles.font14SmokeGrayRegular.copyWith(
        fontSize: 13,
        color: _colorScheme.onSurface.withAlpha(153),
        height: 1.4,
      ),
      labelLarge: TextStyles.font18SnowWhiteBold.copyWith(
        fontSize: 17,
        color: _colorScheme.onPrimary,
        height: 1.1,
      ),
      labelMedium: TextStyles.font14TwilightPurpleMeduim.copyWith(
        fontSize: 15,
        // Override twilight purple with white for dark theme readability
        color: _colorScheme.onSurface,
        height: 1.1,
      ),
      labelSmall: TextStyles.font12CloudWhiteMeduim.copyWith(
        fontSize: 11,
        color: _colorScheme.onSurface.withAlpha(153),
        height: 1.1,
      ),
    );
  }
}
