class Weather {
  late String cityName;
  late double tempCelsius;
  late double humidity;
  late double windSpeed;
  late String icon;

  Weather({
    required this.cityName,
    required this.tempCelsius,
    required this.humidity,
    required this.windSpeed,
    required this.icon,
  });

  // Weather.fromJson(Map<String, dynamic> json) {
  //   cityName = json['location']['name'];
  //   tempCelsius = json['current']['temp_c'];
  //   humidity = json['current']['humidity'];
  //   windSpeed = json['current']['wind_kph'];
  //   icon = json['current']['condition']['icon'];
  // }

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityName: json['location']['name'],
        tempCelsius: json['current']['temp_c'],
        humidity: json['current']['humidity'],
        windSpeed: json['current']['wind_kph'],
        icon: json['current']['condition']['icon']);
  }
}
