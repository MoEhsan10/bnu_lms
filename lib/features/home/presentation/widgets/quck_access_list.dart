import 'package:bnu_lms/features/home/presentation/widgets/category_box.dart';
import 'package:bnu_lms/shared/cubit/language_cubit.dart';
import 'package:bnu_lms/shared/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/resources/app_sizes.dart';

class QuickAccessList extends StatelessWidget {
  const QuickAccessList({super.key, required this.categoryItem});
  final List<Map<String, dynamic>> categoryItem;

  @override
  Widget build(BuildContext context) {
    // Get theme and language
    var themeCubit = context.watch<ThemeCubit>();
    final isLight = themeCubit.isLightTheme();

    var languageCubit = context.watch<LanguageCubit>();
    final currentLang = languageCubit.state;

    return Padding(
      padding: REdgeInsets.symmetric(
          horizontal: AppSizes.horizontalPadding,
          vertical: AppSizes.verticalSectionSpacing
      ),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 1,
        ),
        itemCount: categoryItem.length,
        itemBuilder: (context, index) {
          final item = categoryItem[index];
          return CategoryBox(
            imagePath: item['icon'],
            title: item['title'],
            isLight: isLight,
            isArabic: currentLang == 'ar',
          );
        },
      ),
    );
  }
}