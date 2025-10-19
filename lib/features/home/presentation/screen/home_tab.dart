import 'package:bnu_lms/features/home/presentation/widgets/home_header.dart';
import 'package:bnu_lms/features/home/presentation/widgets/quck_access_list.dart';
import 'package:bnu_lms/features/home/presentation/widgets/upcoming_items_list.dart';
import 'package:bnu_lms/shared/config/theme/app_styles.dart';
import 'package:bnu_lms/shared/resources/app_sizes.dart';
import 'package:bnu_lms/shared/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // Sample data for upcoming items
  final List<Map<String, dynamic>> upcomingItems = [
    {
      'icon': Icons.assignment,
      'title': 'Assignment Due',
      'subtitle': 'Mathematics - Chapter 5',
    },
    {
      'icon': Icons.video_library,
      'title': 'Live Class',
      'subtitle': 'Physics - Thermodynamics',
    },
    {
      'icon': Icons.quiz,
      'title': 'Quiz Tomorrow',
      'subtitle': 'English Literature',
    },
    {
      'icon': Icons.book,
      'title': 'Reading Material',
      'subtitle': 'History - World War II',
    },
  ];

  final List<Map<String, dynamic>> categoryItem = [
    {
      'icon': IconsManager.courses,
      'title': 'Courses',
    },
    {
      'icon': IconsManager.calendar,
      'title': 'Calendar',
    },
    {
      'icon': IconsManager.quiz,
      'title': 'Quiz',
    },
    {
      'icon': IconsManager.grades,
      'title': 'Grades',
    },
    {
      'icon': IconsManager.attendance,
      'title': 'Attendance',
    },
    {
      'icon': IconsManager.gate,
      'title': 'Entrance',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(
          horizontal: AppSizes.horizontalPadding,
          vertical: AppSizes.verticalSectionSpacing),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            SizedBox(height: AppSizes.largeSpacing),
            Text('Upcoming', style: AppTextStyles.sectionTitle),
            SizedBox(height: AppSizes.smallSpacing),
            UpcomingItemsList(upcomingItems: upcomingItems),
            SizedBox(height: AppSizes.largeSpacing),
            Text('Quick Access', style: AppTextStyles.sectionTitle),
            SizedBox(height: AppSizes.smallSpacing),
            QuickAccessList(categoryItem: categoryItem),
          ],
        ),
      ),
    );
  }
}