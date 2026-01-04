import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryLight,
  scaffoldBackgroundColor: AppColors.lightBackground,

  iconTheme: const IconThemeData(
    color: AppColors.lightIconColor, // رنگ آیکون برای تم دارک
  ),
  //drawerTheme
  drawerTheme: DrawerThemeData(backgroundColor: AppColors.lightBackground),

  ///colorSchem
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryLight,
    surface: AppColors.lightSurface,
  ),

  //Tab Bar
  tabBarTheme: TabBarThemeData(
    indicator: BoxDecoration(
      color: AppColors.lightTabIndicatorBackground,
      borderRadius: BorderRadius.circular(40),
    ),
    indicatorColor: AppColors.lightTabIndicatorColor,
    labelColor: AppColors.lightTabLabelColor,
    unselectedLabelColor: AppColors.lightTabUnselectedLabelColor,

    /*
indicator: UnderlineTabIndicator(
       borderSide: BorderSide(color: AppColors.lightTabIndicatorColor, width: 1),
     ),
     */
    labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    unselectedLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  ),

  //
  fontFamily: AppFonts.primaryFont,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.lightPrimaryTxtColor,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      color: AppColors.lightPrimaryTxtColor,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w800,
      color: AppColors.lightPrimaryTxtColor,
      letterSpacing: 0.2,
    ),
    labelMedium: TextStyle(color: AppColors.lightSecondaryTxtColor),
  ),
  appBarTheme: AppBarTheme(backgroundColor: AppColors.lightBackground),
);
