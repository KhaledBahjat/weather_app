import 'package:flutter/material.dart';

class AppColor {
  // لون افتراضي لو النص مش معروف
  static MaterialColor getThemeColorByCondition(String? condition) {
    if (condition == null) return Colors.indigo;

    condition = condition.toLowerCase(); // لتجنب مشاكل الـ case

    // ☀️ Clear / Sunny
    if (condition.contains("sunny") || condition.contains("clear")) {
      return Colors.orange;
    }

    // 🌤 Partly Cloudy
    if (condition.contains("partly cloudy")) {
      return Colors.amber;
    }

    // ☁️ Cloudy / Overcast
    if (condition.contains("cloudy") || condition.contains("overcast")) {
      return Colors.grey;
    }

    // 🌫 Fog / Mist
    if (condition.contains("fog") || condition.contains("mist")) {
      return Colors.blueGrey;
    }

    // 🌧 Drizzle / Rain
    if (condition.contains("drizzle") ||
        condition.contains("rain") ||
        condition.contains("shower")) {
      return Colors.indigo;
    }

    // ❄️ Snow
    if (condition.contains("snow")) {
      return Colors.cyan;
    }

    // 🧊 Sleet / Ice pellets
    if (condition.contains("sleet") || condition.contains("ice")) {
      return Colors.teal;
    }

    // ⛈ Thunder
    if (condition.contains("thunder") || condition.contains("storm")) {
      return Colors.deepPurple;
    }

    // default
    return Colors.blue;
  }
}
