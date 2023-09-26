import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  /// data
  ThemeMode appTheme = ThemeMode.dark ;
  String appLanguage = 'en';

  void changeTheme(ThemeMode newMode){
    if(appTheme == newMode){
      return ;
    }
    appTheme = newMode ;
    notifyListeners();
  }

  void changeLanguage(String newLanguage){
    if(appLanguage == newLanguage){
      return ;
    }
    appLanguage = newLanguage ;
    notifyListeners();
  }

  bool isDarkMode(){
    return appTheme == ThemeMode.dark ;
  }
}