import 'package:flutter/material.dart';
import 'package:weather_app/screens/no_weather_body.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/weather_info_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => SearchScreen())),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: WeatherInfoBody(),
    );
  }
}
