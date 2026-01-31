class WeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final double avgTemp;
  final double mxTemp;
  final double mnTemp;
  final String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.image,
    required this.avgTemp,
    required this.mxTemp,
    required this.mnTemp,
    required this.weatherCondition,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json["location"]["name"],
      date: DateTime.parse(json["current"]["last_updated"]),
      avgTemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      mxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      mnTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      weatherCondition:
          json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
    );
  }
}
