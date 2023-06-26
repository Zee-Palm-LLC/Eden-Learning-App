import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.teal,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.kWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: AppColors.kWhite,
      elevation: 0,
    ),
    fontFamily: 'Hanken Grotesk',
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppSpacing.twentyHorizontal,
        vertical: 16.h,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.kWhite,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
}

// Default Overlay.
SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.black,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);

SystemUiOverlayStyle customOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
);
