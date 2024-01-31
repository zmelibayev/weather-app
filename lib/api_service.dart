import 'dart:convert';

//import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
//import 'package:weather_app/model.dart';

/*
class ApiService {
  Future<List<Weather>> getWeather() async {
    Dio dio = Dio();
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/current.json?key=146b39f78eb647a2b3453349242501&q=40.39,71.78&aqi=no');

    if (response.statusCode == 200) {
      List<Weather> listWeather = [];
      for (int i = 0; i < response.data['location'].length; i++) {
        final entry = response.data['location'][i];
        listWeather.add(Weather.fromJson(entry));
      }
      return listWeather;
    } else {
      throw Exception('Data no');
    }
  }
}

*/

/*
class ApiService {
  Future getWeather() async {
    Dio dio = Dio();
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/current.json?key=146b39f78eb647a2b3453349242501&q=40.39,71.78&aqi=no');
    if (response.statusCode == 200) {
      List allData = response.data.map((e) => Weather.fromJson(e)).toList();
      return allData;
    }
  }
}
*/

class ApiService {

}



Future<Map<String, dynamic>> getWeather() async {
  // Make API call and get response
  var response = await http.get(Uri.parse(
      'https://api.weatherapi.com/v1/current.json?key=146b39f78eb647a2b3453349242501&q=40.39,71.78&aqi=no'));

  // Check if response is successful
  if (response.statusCode == 200) {
    // Parse response body
    Map<String, dynamic> data = json.decode(response.body);

    return data;
  } else {
    // Handle error or return null
    throw Exception('fds-');
  }
}





//  https://api.weatherapi.com/v1/current.json?key=146b39f78eb647a2b3453349242501&q=40.39,71.78&aqi=no