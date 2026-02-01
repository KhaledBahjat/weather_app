import 'package:weather_app/models/weather_model.dart';

class WeatherStates {}

class InitialWeatherState extends WeatherStates {}

class GetWeatherState extends WeatherStates {
  final WeatherModel weatherModel;

  GetWeatherState({required this.weatherModel});
}

class LoadingState extends WeatherStates {}

class ErrorCityNameState extends WeatherStates {}

class ErrorNetWorkState extends WeatherStates {}

class NoEnterCityState extends WeatherStates {}
