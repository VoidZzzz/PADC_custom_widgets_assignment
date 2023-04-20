import 'package:flutter/material.dart';
import 'package:padc_custom_widget_assignment/home_page.dart';
import 'package:padc_custom_widget_assignment/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            elevation: 0.0, centerTitle: true, color: TERTIARY_COLOR),
      ),
      home: const HomePage(),
    );
  }
}
