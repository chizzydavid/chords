import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: Color(0xFF02AD58),
    accentColor: Color(0xFFFF9F1C),
    appBarTheme: AppBarTheme(
      color: Color(0xFF1d1d1d),
      actionsIconTheme: IconThemeData(color: Colors.white)
    ),
    textTheme: TextTheme(
      bodyText1: lightTextStyle.copyWith(fontSize: 16,),
      bodyText2: lightTextStyle.copyWith(fontSize: 15,),
      subtitle1: lightTextStyle.copyWith(fontSize: 14,),
      subtitle2: lightTextStyle.copyWith(fontSize: 14,),
      caption: lightTextStyle.copyWith(fontSize: 13,),
      button: lightTextStyle.copyWith(fontSize: 14,),
      headline1: lightTextStyle.copyWith(fontSize: 72.0),
      headline2: lightTextStyle.copyWith(fontSize: 20.0,),
      headline4: lightTextStyle.copyWith(fontSize: 30.0, fontWeight: FontWeight.bold),
      headline5: lightTextStyle.copyWith(fontSize: 23.0, fontWeight: FontWeight.bold),
      headline6: lightTextStyle.copyWith(fontSize: 15.0,),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFF00423A),
      textTheme: ButtonTextTheme.primary
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Color(0xfff7f0f5)),
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      filled: false,
      fillColor: Color(0xfff5f5f5),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF535c5f), width: 1.5)
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF00423A), width: 1.5)
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red[500], width: 1.5)
      ),
      errorStyle: TextStyle(
        color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold
      )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.red,
    )
  );

  static final TextStyle lightTextStyle = TextStyle(
    fontFamily: 'FiraSans', 
    fontSize: 17, 
    height: 1.2, 
    letterSpacing: .2, 
    color: Color(0xFF404040)
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff181B2C),
    brightness: Brightness.dark,
    primaryColor: Color(0xff181B2C),
    accentColor: Color(0xffE22052),
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        bodyText1: darkTextStyle.copyWith(fontSize: 16,),
      )
    ),
    textTheme: TextTheme(
      bodyText1: darkTextStyle.copyWith(fontSize: 16,),
      bodyText2: darkTextStyle.copyWith(fontSize: 15,),
      subtitle1: darkTextStyle.copyWith(fontSize: 14,),
      subtitle2: darkTextStyle.copyWith(fontSize: 14,),
      caption: darkTextStyle.copyWith(fontSize: 13,),
      button: darkTextStyle.copyWith(fontSize: 14,),
      headline1: darkTextStyle.copyWith(fontSize: 72.0),
      headline2:darkTextStyle.copyWith(fontSize: 20.0,),
      headline3:darkTextStyle.copyWith(fontSize: 37.0, fontWeight: FontWeight.bold),
      headline4: darkTextStyle.copyWith(fontSize: 30.0, fontWeight: FontWeight.bold),
      headline5: darkTextStyle.copyWith(fontSize: 23.0, fontWeight: FontWeight.bold, color: Color(0xffc7c9d1)),
      headline6: darkTextStyle.copyWith(fontSize: 15.0,),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xffE22052),
      height: 45,
      textTheme: ButtonTextTheme.normal
    ),
  );


  static final TextStyle darkTextStyle = TextStyle(
    fontFamily: 'Raleway', 
    height: 1.2, 
    color: Color(0xFF999CA9)
  );

}
