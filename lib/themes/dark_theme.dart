import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  // primaryColor: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.darkBackground,
  fontFamily: AppFonts.primaryFont,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryDark,
    surface: AppColors.darkSurface,
  ),

  //drawerTheme
  drawerTheme: DrawerThemeData(
    backgroundColor:AppColors.darkBackground,
    
  ),


  tabBarTheme: TabBarThemeData(
    indicator: BoxDecoration(
      color: AppColors.darkTabIndicatorBackground,
      borderRadius: BorderRadius.circular(40),
    ),
    labelColor: AppColors.darkTabLabelColor,
    unselectedLabelColor: AppColors.darkTabUnselectedLabelColor,
    // indicator: UnderlineTabIndicator(
    //   borderSide: BorderSide(color: AppColors.darkTabIndicatorColor, width: 1),
    // ),
    labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    unselectedLabelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  ),
  iconTheme: IconThemeData(
    color: AppColors.darkIconColor, // رنگ آیکون برای تم دارک
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.darkPrimaryTxtColor,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      color: AppColors.darkPrimaryTxtColor,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w800,
      color: AppColors.darkPrimaryTxtColor,
      letterSpacing: 0.2,
    ),
    labelMedium: TextStyle(
      color: AppColors.darkPrimaryTxtColor,
      fontWeight: FontWeight.w800,
    ),
  ),

  appBarTheme: AppBarTheme(backgroundColor: AppColors.darkBackground),
);
