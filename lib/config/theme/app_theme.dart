import 'package:flutter/material.dart';

class AppTheme {
  AppTheme(); 

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color.fromARGB(255, 61, 220, 133),
    appBarTheme: AppBarTheme(centerTitle: true)
  );


}