import 'package:flutter/material.dart';
import 'package:bmi_calculator/home.dart';
import 'home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        cardColor: const Color(0xFF111428),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color(0xFF0A0D22),
        ),
      ),
      home: const Home1(),
    );
  }
}
