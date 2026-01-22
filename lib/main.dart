import 'package:flutter/material.dart';
import 'package:weather_app/screens/no_weather_screen.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoWeatherScreen(),
    );
  }
}
