import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageCubit extends Cubit<String> {
  LanguageCubit() : super('en') {
    getLanguage();
  }

  void changeAppLanguage(String newLanguage) {
    if (state == newLanguage) return;
    emit(newLanguage);
    saveLanguage(newLanguage);
  }

  void saveLanguage(String lang) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (lang == 'ar') {
      prefs.setString('language', 'ar');
    } else {
      prefs.setString('language', 'en');
    }
  }

  void getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedLang = prefs.getString('language') ?? 'en';
    if (cachedLang == 'ar') {
      emit('ar');
    } else {
      emit('en');
    }
  }
}