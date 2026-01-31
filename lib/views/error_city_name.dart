import 'package:flutter/material.dart';

class ErrorCityWidget extends StatelessWidget {
  const ErrorCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFC107), 
            Color(0xFFFFD54F),
            Color(0xFFFFECB3),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.location_off_rounded,
              size: 120,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            const Text(
              'Oops!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Please enter a correct city name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
