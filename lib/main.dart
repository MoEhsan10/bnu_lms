import 'package:bnu_lms/features/home/presentation/screen/home_screen.dart';
import 'package:bnu_lms/shared/config/theme/app_theme.dart';
import 'package:bnu_lms/shared/cubit/language_cubit.dart';
import 'package:bnu_lms/shared/cubit/theme_cubit.dart';
import 'package:bnu_lms/shared/routes_manager/routes.dart';
import 'package:bnu_lms/shared/routes_manager/routes_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const BNU());
}

class BNU extends StatelessWidget {
  const BNU({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => LanguageCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<LanguageCubit, String>(
            builder: (context, language) {
              return ScreenUtilInit(
                designSize: const Size(430, 932),
                minTextAdapt: true,
                splitScreenMode: true,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: const HomeScreen(),
                  theme: AppTheme.light,
                  darkTheme: AppTheme.dark, // Add this line!
                  themeMode: themeState.themeMode,
                  locale: Locale(language), // Activate locale
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  initialRoute: Routes.main,
                  onGenerateRoute: RoutesGenerator.getRoute,
                ),
              );
            },
          );
        },
      ),
    );
  }
}