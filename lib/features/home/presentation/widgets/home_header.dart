import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/config/theme/app_styles.dart';
import '../../../../shared/resources/assets_manager.dart';
import '../../../../shared/resources/colors_manager.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24.r,
          backgroundColor: ColorsManager.blue,
          child: ClipOval(
            child: Image.asset(
              ImagesManager.profileImage,
              fit: BoxFit.cover,
              width: 48.w,
              height: 48.h,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.person);
              },
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome back,', style: AppTextStyles.welcome),
              Text('Mohamed', style: AppTextStyles.userName),
            ],
          ),
        ),
        Row(
          children: [
            const ImageIcon(AssetImage(IconsManager.notification)),
            SizedBox(width: 20.w),
            const Icon(Icons.settings),
          ],
        )
      ],
    );
  }
}
