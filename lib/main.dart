import 'package:flutter/material.dart';
import 'package:my_chords/core/providers/theme_provider.dart';
import 'package:my_chords/ui/screens/home.dart';
import 'package:provider/provider.dart';
// import 'package:my_chords/ui/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();  
  runApp(MyChords());
}


class MyChords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (context) => new ThemeProvider()),
      ], 
      child: MyApp()
    );
  }
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    themeProvider.setTheme(prefs);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.currentTheme,
      home: HomeScreen(),
    );
  }
}
