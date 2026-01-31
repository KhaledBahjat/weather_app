import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(InitialWeatherState());
  WeatherModel? weatherData;
  getCurrentWeather({required String cityName}) async {
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 1));
    try {
      weatherData = await WeatherService(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(GetWeatherState());
    } on Exception catch (e) {
      log(e.toString());
      if (e.toString() == 'Exception: No matching location found.') {
        emit(ErrorCityNameState());
      } else if (e.toString() == 'Exception: No NetWork') {
        emit(ErrorNetWorkState());
      } else if (e.toString() == 'Exception: Parameter q is missing.') {
        emit(NoEnterCityState());
      }
    }
  }
}
