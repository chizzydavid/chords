import 'package:my_chords/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

// Default to Dark theme

class ThemeProvider extends ChangeNotifier {
  String preferredTheme;
  ThemeData get currentTheme => preferredTheme == 'dark' ? AppTheme.darkTheme : AppTheme.lightTheme;

  void setTheme(prefs) async {
    if (preferredTheme != null) return;

    String savedTheme = prefs.getString('app_theme');
    if (savedTheme == null) {
      preferredTheme = 'dark';
      return;
    }
    preferredTheme = savedTheme;
  }

  void changeTheme(String theme) async {
    if (theme == preferredTheme) return;
    preferredTheme = theme;
    // var prefs = await SharedPreferences.getInstance();
    // await prefs.setString('app_theme', theme);
    notifyListeners();
  }
}
