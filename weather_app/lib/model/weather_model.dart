class WeatherModel {
  final String city, weatherState;
  final double temp;
  final double maxTemp, minTemp;
  final String? imagePath;
  final String date;

  WeatherModel(
      {required this.city,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherState,
      this.imagePath});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      city: json['location']['name'],
      date: json['current']['last_updated'],
      weatherState: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      imagePath: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
