import 'package:flutter/material.dart';

class ErrorNetWorkWidget extends StatelessWidget {
  const ErrorNetWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFD32F2F),
            Color(0xFFEF5350),
            Color(0xFFFFCDD2),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.wifi_off_rounded,
              color: Colors.white,
              size: 120,
            ),
            SizedBox(height: 20),
            Text(
              'No Internet Connection',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Please check your network\nand try again',
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
