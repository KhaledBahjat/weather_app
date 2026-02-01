import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/theme/get_theme_color.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                primarySwatch: AppColor.getThemeColorByCondition(
                  BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherData?.weatherCondition,
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: AppColor.getThemeColorByCondition(
                    BlocProvider.of<GetWeatherCubit>(
                      context,
                    ).weatherData?.weatherCondition,
                  ),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}
