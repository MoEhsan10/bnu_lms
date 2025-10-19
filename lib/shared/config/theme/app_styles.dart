import 'package:bnu_lms/shared/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // 👋 Welcome Text
  static final TextStyle welcome = GoogleFonts.poppins(
    fontSize: 14.sp,
    color: ColorsManager.blue,
    fontWeight: FontWeight.w400,
  );

  // 🙋‍♂️ User Name
  static final TextStyle userName = GoogleFonts.poppins(
    fontSize: 16,
    color: ColorsManager.black,
    fontWeight: FontWeight.w600,
  );

  // 🏷️ Section Titles (e.g., "Upcoming", "Quick Access")
  static final TextStyle sectionTitle = GoogleFonts.poppins(
    fontSize: 20,
    color: ColorsManager.black,
    fontWeight: FontWeight.w600,
  );

  // 📘 Card Title (e.g., "Calculus II Assignment")
  static final TextStyle cardTitle = GoogleFonts.poppins(
    fontSize: 16,
    color: ColorsManager.black,
    fontWeight: FontWeight.w500,
  );

  // 🕒 Card Subtitle (e.g., "Due at 11:59 PM")
  static final TextStyle cardSubtitle = GoogleFonts.poppins(
    fontSize: 14,
    color: ColorsManager.grayDark,
    fontWeight: FontWeight.w400,
  );

  // 📚 Quick Access Label (e.g., "Courses", "Calendar")
  static final TextStyle quickAccessLabel = GoogleFonts.poppins(
    fontSize: 15,
    color: ColorsManager.black,
    fontWeight: FontWeight.w500,
  );

  // 🔁 Continue Section Title (e.g., "Continue where you left off")
  static final TextStyle continueTitle = GoogleFonts.poppins(
    fontSize: 18,
    color: ColorsManager.black,
    fontWeight: FontWeight.w600,
  );

  // ⏳ Duration Text (e.g., "15 min left")
  static final TextStyle timeRemaining = GoogleFonts.poppins(
    fontSize: 13,
    color: ColorsManager.grayMedium,
    fontWeight: FontWeight.w400,
  );
}
