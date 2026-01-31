import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.data});
  final WeatherModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            data.cityName,
            style: TextStyle(fontSize: 40),
          ),
          Text('Updated at ${data.data} ', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Image.network(
                  data.image.contains("https:")
                      ? data.image
                      : "https:${data.image}",
                  fit: BoxFit.contain,
                ),
              ),
              Text('${data.avgTemp.toInt()}°C', style: TextStyle(fontSize: 35)),
              Column(
                children: [
                  Text(
                    'maxTemp : ${data.mxTemp.toInt()}°C',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'minTemp :  ${data.mnTemp.toInt()}°C',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            '--- ${data.weatherCondition} ---',
            style: TextStyle(fontSize: 35),
          ),
        ],
      ),
    );
  }
}
