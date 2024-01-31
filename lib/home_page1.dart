import 'package:flutter/material.dart';
import 'package:weather_app/api_service.dart';
import 'package:weather_app/model.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<Weather>? newData;

  // @override
  // void initState() {
  //   getWeather().then((value) {
  //     newData = value as List<Weather>?;

  //     super.initState();
  //   });
  // }

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  void fetchWeatherData() {
    getWeather().then((weatherData) {
      setState(() {
        newData = weatherData as List<Weather>?;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Api call'),
        ),
        body: newData != null
            ? ListView.builder(
                itemCount: newData!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(newData![index].cityName),
                    subtitle: Text(newData![index].humidity.toString()),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
