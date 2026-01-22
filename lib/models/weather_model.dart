class WeatherModel {
  final String cityName;
  final String data;
  final String image;
  final String avgTemp;
  final String mxTemp;
  final String mnTemp;
  final String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.data,
    required this.image,
    required this.avgTemp,
    required this.mxTemp,
    required this.mnTemp,
    required this.weatherCondition,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json["location"]["name"],
      data: json["current"]["last_updated"],
      avgTemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      mxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      mnTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      weatherCondition:
          json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
    );
  }
}
