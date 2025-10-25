import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

// State class
class ThemeState {
  final ThemeMode themeMode;

  ThemeState({required this.themeMode});

  bool isLightTheme() => themeMode == ThemeMode.light;

  ThemeState copyWith({ThemeMode? themeMode}) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}

// Cubit
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.light)) {
    getThemeMode();
  }

  void changeAppTheme(ThemeMode newTheme) {
    if (state.themeMode == newTheme) return;
    emit(state.copyWith(themeMode: newTheme));
    saveThemeMode(newTheme);
  }

  bool isLightTheme() {
    return state.isLightTheme();
  }

  Future<void> saveThemeMode(ThemeMode theme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (theme == ThemeMode.light) {
      await prefs.setString('theme', 'light');
    } else {
      await prefs.setString('theme', 'dark');
    }
  }

  Future<void> getThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedTheme = prefs.getString('theme') ?? 'light';
    if (cachedTheme == 'light') {
      emit(state.copyWith(themeMode: ThemeMode.light));
    } else {
      emit(state.copyWith(themeMode: ThemeMode.dark));
    }
  }
}