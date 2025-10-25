import 'package:bnu_lms/features/settings/presentation/widgets/settings_box.dart';
import 'package:bnu_lms/shared/config/theme/app_light_text_styles.dart';
import 'package:bnu_lms/shared/cubit/language_cubit.dart';
import 'package:bnu_lms/shared/cubit/theme_cubit.dart';
import 'package:bnu_lms/shared/resources/app_sizes.dart';
import 'package:bnu_lms/shared/resources/assets_manager.dart';
import 'package:bnu_lms/shared/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../shared/config/theme/app_dark_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get theme and language
    var themeCubit = context.watch<ThemeCubit>();
    final isLight = themeCubit.isLightTheme();

    // var languageCubit = context.watch<LanguageCubit>();
    // final currentLang = languageCubit.state;

    // Get localization
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      // backgroundColor: isLight ? ColorsManager.background : ColorsManager.darkBackground,
      appBar: AppBar(
        backgroundColor: isLight ? ColorsManager.white : ColorsManager.darkSurface,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: isLight ? ColorsManager.black : ColorsManager.white,
            size: 22.sp,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          localizations.settingsTitle,
          style: isLight
              ? AppLightTextStyles.appBarTitle
              : AppDarkTextStyles.appBarTitle,
        ),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: AppSizes.horizontalPadding,
          vertical: AppSizes.verticalSectionSpacing,
        ),
        child: Column(
          children: [
            // Theme Settings
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, themeState) {
                final isDark = !themeState.isLightTheme();
                return SettingsBox(
                  icon: IconsManager.theme,
                  title: localizations.theme,
                  subtitle: isDark ? localizations.dark : localizations.light,
                  hasSwitch: true,
                  switchValue: isDark,
                  onToggle: (value) {
                    context.read<ThemeCubit>().changeAppTheme(
                      value ? ThemeMode.dark : ThemeMode.light,
                    );
                  },
                  isLight: isLight,
                );
              },
            ),
            SizedBox(height: AppSizes.smallSpacing),

            // Language Settings
            BlocBuilder<LanguageCubit, String>(
              builder: (context, language) {
                return SettingsBox(
                  icon: IconsManager.language,
                  title: localizations.language,
                  subtitle: language == 'ar' ? localizations.arabic : localizations.english,
                  hasArrow: true,
                  onTap: () {
                    _showLanguageDialog(context, language, localizations);
                  },
                  isLight: isLight,
                );
              },
            ),
            SizedBox(height: AppSizes.smallSpacing),

            // Notifications Settings
            SettingsBox(
              icon: IconsManager.notification,
              title: localizations.notifications,
              subtitle: localizations.on,
              hasSwitch: true,
              switchValue: true,
              onToggle: (value) {
                // TODO: Implement notification settings
              },
              isLight: isLight,
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(
      BuildContext context,
      String currentLanguage,
      AppLocalizations localizations,
      ) {
    final isLight = context.read<ThemeCubit>().isLightTheme();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: isLight ? ColorsManager.white : ColorsManager.darkSurface,
        title: Text(
          localizations.language,
          style: TextStyle(
            color: isLight ? ColorsManager.black : ColorsManager.white,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<String>(
              title: Text(
                localizations.english,
                style: TextStyle(
                  color: isLight ? ColorsManager.black : ColorsManager.white,
                ),
              ),
              value: 'en',
              groupValue: currentLanguage,
              onChanged: (value) {
                if (value != null) {
                  context.read<LanguageCubit>().changeAppLanguage(value);
                  Navigator.pop(dialogContext);
                }
              },
            ),
            RadioListTile<String>(
              title: Text(
                localizations.arabic,
                style: TextStyle(
                  color: isLight ? ColorsManager.black : ColorsManager.white,
                ),
              ),
              value: 'ar',
              groupValue: currentLanguage,
              onChanged: (value) {
                if (value != null) {
                  context.read<LanguageCubit>().changeAppLanguage(value);
                  Navigator.pop(dialogContext);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}