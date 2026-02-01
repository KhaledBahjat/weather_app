import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/theme/get_theme_color.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.data});
  final WeatherModel data;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.getThemeColorByCondition(data.weatherCondition),
            AppColor.getThemeColorByCondition(data.weatherCondition).shade200,
          ],
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            data.cityName,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            'Updated at ${data.date.hour}:${data.date.minute} ${getAmPm(data.date)} \n ${data.date.day}/${data.date.month}/${data.date.year}',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 80,
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

String getAmPm(DateTime date) {
  return date.hour < 12 ? 'AM' : 'PM';
}
