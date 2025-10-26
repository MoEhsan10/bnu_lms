import 'package:bnu_lms/shared/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class AppLightTextStyles {

  // ============================
  // 🏠 HOME SCREEN
  // ============================

  /// 👋 "Welcome" text
  static final TextStyle welcome = GoogleFonts.poppins(
    fontSize: 14.sp,
    color: ColorsManager.blue,
    fontWeight: FontWeight.w400,
  );

  /// 🙋‍♂️ User Name (e.g., "Hi, Mohamed")
  static final TextStyle userName = GoogleFonts.poppins(
    fontSize: 16.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w600,
  );

  /// 🏷️ Section titles (e.g., "Upcoming", "Quick Access")
  static final TextStyle sectionTitle = GoogleFonts.poppins(
    fontSize: 20.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w600,
  );

  /// 📚 Quick Access Labels (e.g., "Courses", "Calendar")
  static final TextStyle quickAccessLabel = GoogleFonts.poppins(
    fontSize: 15.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w500,
  );

  /// 🔁 "Continue where you left off"
  static final TextStyle continueTitle = GoogleFonts.poppins(
    fontSize: 18.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w600,
  );

  /// ⏳ Time text (e.g., "15 min left")
  static final TextStyle timeRemaining = GoogleFonts.poppins(
    fontSize: 13.sp,
    color: ColorsManager.grayMedium,
    fontWeight: FontWeight.w400,
  );

  // ============================
  // 🗂️ CARDS (Assignments / Courses / Items)
  // ============================

  /// 📘 Card Title
  static final TextStyle cardTitle = GoogleFonts.poppins(
    fontSize: 16.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w500,
  );

  /// 🕒 Card Subtitle
  static final TextStyle cardSubtitle = GoogleFonts.poppins(
    fontSize: 14.sp,
    color: ColorsManager.grayDark,
    fontWeight: FontWeight.w400,
  );

  // ============================
  // ⚙️ SETTINGS SCREEN
  // ============================

  /// AppBar Title
  static final TextStyle appBarTitle = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.black,
  );

  /// Title of each setting item
  static final TextStyle settingItemTitle = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.black,
  );

  /// Subtitle of setting item
  static final TextStyle settingItemSubtitle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.blueGray,
  );

  // ============================
  // 📌 TABS (Home / Forums / Profile)
  // ============================

  static final tabLabelSelected = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.white,
  );

  static final tabLabelUnselected = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.grayDark,
  );

  // ============================
  // 🔔 NOTIFICATIONS
  // ============================

  static final notificationTitle = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.black,
  );

  static final notificationDescription = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.35,
    color: ColorsManager.grayDark,
  );

  static final notificationTime = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grayMedium,
  );

  //Auth
// LOGIN SCREEN TEXT STYLES
  static final TextStyle loginTitle = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.black,
  );

  static final TextStyle loginSubtitle = GoogleFonts.poppins(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grayDark,
  );

  static final TextStyle loginInputHint = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grayDark,
  );

  static final TextStyle forgotPassword = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.blue,
  );

  static final TextStyle loginButtonText = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.white,
  );

  static final TextStyle loginSsoButtonText = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.blue,
  );

  static final TextStyle loginFooter = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grayMedium,
  );

}
