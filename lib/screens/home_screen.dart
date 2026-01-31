import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/screens/no_weather_body.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/weather_info_body.dart';
import 'package:weather_app/views/error_city_name.dart';
import 'package:weather_app/views/no_enter_city_name.dart';
import 'package:weather_app/views/no_network.dart';

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
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is GetWeatherState) {
            return WeatherInfoBody(
              data: state.weatherModel,
            );
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is InitialWeatherState) {
            return NoWeatherBody();
          } else if (state is ErrorCityNameState) {
            return ErrorCityWidget();
          } else if (state is ErrorNetWorkState) {
            return ErrorNetWorkWidget();
          } else {
            return NoEnterCityWidget();
          }
        },
      ),
    );
  }
}
