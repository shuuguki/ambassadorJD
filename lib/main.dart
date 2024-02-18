import 'package:flutter/material.dart';
import 'package:hiringpage/pages/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 19, 19, 19),
            textTheme: TextTheme(
                bodyText1: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                bodyText2: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                headline1: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    fontSize: 85,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
                headline2: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 202, 168, 245))),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 202, 168, 245),
              side: BorderSide(
                  color: Color.fromARGB(255, 202, 168, 245), width: 2.0),
              backgroundColor: Color.fromARGB(100, 202, 168, 245),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            )),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  backgroundColor: Color.fromARGB(255, 202, 168, 245),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Corner radius
                  ),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
            )),
        home: const HomePage());
  }
}
