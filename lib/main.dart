import 'package:flutter/material.dart';
import 'package:language_translator_app/core/colors/colors.dart';

import 'package:language_translator_app/presentation/home/screens/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kblack,
          textTheme: Typography.whiteCupertino),
      home: const ScreenHome(),
    );
  }
}
