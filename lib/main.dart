import 'package:flutter/material.dart';
import 'package:hiringpage/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 19, 19, 19),
            textTheme: const TextTheme(
                bodyLarge: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                bodyMedium: TextStyle(
                  fontFamily: 'Berlin Sans FB Demi',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                displayLarge: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    fontSize: 85,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
                displayMedium: TextStyle(
                    fontFamily: 'Berlin Sans FB Demi',
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 202, 168, 245))),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 202, 168, 245),
              side: const BorderSide(
                  color: Color.fromARGB(255, 202, 168, 245), width: 2.0),
              backgroundColor: const Color.fromARGB(100, 202, 168, 245),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            )),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  backgroundColor: const Color.fromARGB(255, 202, 168, 245),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Corner radius
                  ),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
            )),
        home: const HomePage());
  }
}
