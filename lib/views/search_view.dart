import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Find Weather 🌤️',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),

            TextField(
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {
                if (value.trim().isEmpty) return;

                WeatherService(Dio()).getCurrentWeather(cityName: value.trim());

                Navigator.pop(context);
              },
              decoration: InputDecoration(
                hintText: 'Enter city name',
                prefixIcon: const Icon(Icons.location_city),
                suffixIcon: const Icon(Icons.search),

                filled: true,
                fillColor: Colors.grey.shade100,

                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
