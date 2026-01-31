import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());

  getCurrentWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel = await WeatherService(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadingState());
    } on Exception {
      emit(WeatherFailureState());
    }
  }
}
