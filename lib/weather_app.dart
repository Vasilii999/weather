
import 'package:flutter/material.dart';
import 'package:weather/features/home_page/view/home_page.dart';
import 'package:weather/theme/theme.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      theme: lightTheme,
      home: HomePage(),
    );
  }
}