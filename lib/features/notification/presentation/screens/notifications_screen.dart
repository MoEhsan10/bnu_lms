import 'package:bnu_lms/features/notification/presentation/widgets/notification_tab_bar.dart';
import 'package:bnu_lms/shared/config/theme/app_light_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../shared/config/theme/app_dark_text_styles.dart';
import '../../../../shared/cubit/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../shared/resources/colors_manager.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    final isLight = themeProvider.isLightTheme();
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: isLight ? ColorsManager.black : ColorsManager.white,
            size: 22.sp,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          localizations.notifications,
          style: isLight
              ? AppLightTextStyles.appBarTitle
              : AppDarkTextStyles.appBarTitle,
        ),
      ),
      body: const NotificationTabBar(),
    );
  }
}
