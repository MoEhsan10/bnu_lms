import 'package:bnu_lms/shared/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManager.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsManager.white,

      selectedItemColor: ColorsManager.blue,
       // unselectedItemColor: ColorsManager.textSecondary,
    ),
    // iconTheme: const IconThemeData(
    //     color: ColorsManager.white
    // ),
  );
}