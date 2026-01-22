import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            'Qena',
            style: TextStyle(fontSize: 40),
          ),
          Text('Updated at 15 /2 ', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.cloud, size: 40),
              Text('15°C', style: TextStyle(fontSize: 35)),
              Column(
                children: [
                  Text('maxTemp : 30°C', style: TextStyle(fontSize: 18)),
                  Text('minTemp : 10°C', style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('--- Light Rain ---', style: TextStyle(fontSize: 35)),
        ],
      ),
    );
  }
}
