import 'package:flutter/material.dart';

class MyTheme {
  /// colors , light theme , dark theme
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whiteColor = Color(0xffffffff);
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

   static ThemeData lightTheme = ThemeData(
     primaryColor: primaryLight,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
       backgroundColor: Colors.transparent,
       elevation:  0,
       centerTitle: true,
       iconTheme: IconThemeData(
         color: blackColor
       )
     ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: blackColor,
       unselectedItemColor: whiteColor,
     ),
     textTheme: TextTheme(
       titleLarge: TextStyle(
         fontSize: 30,
         fontWeight: FontWeight.bold
       ),
       titleMedium: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w500
       ),
       titleSmall: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w400
       ),
     ),
   );

   static ThemeData darkTheme = ThemeData(
     primaryColor: primaryDark,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
       backgroundColor: Colors.transparent,
       elevation:  0,
       centerTitle: true,
       iconTheme: IconThemeData(
         color: whiteColor
       )
     ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: yellowColor,
       unselectedItemColor: whiteColor,
     ),
     textTheme: TextTheme(
       titleLarge: TextStyle(
         fontSize: 30,
         fontWeight: FontWeight.bold,
         color: whiteColor
       ),
       titleMedium: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w500,
           color: whiteColor
       ),
       titleSmall: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w400,
           color: yellowColor
       ),
     ),
   );
}