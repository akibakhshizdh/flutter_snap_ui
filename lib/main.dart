import 'package:flutter/material.dart';
import 'package:snapp/screens/mainScreen.dart';
import 'package:snapp/themes/dark_theme.dart';
import 'package:snapp/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  //change
  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',

      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: MainScreen(toggleTheme: toggleTheme),
    );
  }
}
