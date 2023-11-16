import 'package:flutter/material.dart';
import 'package:module_07/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.purple,
          elevation: 7,
          titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            textStyle: TextStyle(fontSize: 14)
          )
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 16
          ),
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 14
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: HomePage(),
    );
  }
}
