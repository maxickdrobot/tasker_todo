import 'package:flutter/material.dart';
import 'package:tasker_todo/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const ColorScheme colorScheme = ColorScheme.light(
    primary: Color.fromARGB(255, 0, 108, 255),
    onPrimary: Colors.white,

    surface: Colors.white,
    onSurface: Color.fromARGB(255, 37, 42, 49),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tasker_todo',
      theme: ThemeData(
        scaffoldBackgroundColor: App.colorScheme.surface,

        colorScheme: colorScheme,

        appBarTheme: AppBarTheme(
          backgroundColor: App.colorScheme.surface,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: App.colorScheme.onSurface,
          ),
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          sizeConstraints: const BoxConstraints.tightFor(width: 64, height: 64),
          backgroundColor: App.colorScheme.onPrimary,
          foregroundColor: App.colorScheme.primary,
          shape: const CircleBorder(),
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
          bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      home: HomePage(),
    );
  }
}
