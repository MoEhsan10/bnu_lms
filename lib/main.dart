import 'package:bnu_lms/features/home/presentation/screen/home_screen.dart';
import 'package:bnu_lms/shared/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BNU());
}

class BNU extends StatelessWidget {
  const BNU({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
        theme: AppTheme.light,
      ),
    );
  }
}