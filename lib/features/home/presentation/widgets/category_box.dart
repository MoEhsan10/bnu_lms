import 'package:bnu_lms/shared/config/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/resources/colors_manager.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key, required this.imagePath, required this.title});

  final dynamic imagePath; // Can be IconData or String
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.11),
            blurRadius: 10,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: ColorsManager.lightBlue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: imagePath is IconData
                ? Icon(
              imagePath,
              color: ColorsManager.blue,
              size: 32.sp,
            )
                : ImageIcon(
              AssetImage(imagePath),
              color: ColorsManager.blue,
              size: 32.sp,
            ),
          ),
          Text(
            title,
            style: AppTextStyles.quickAccessLabel,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}