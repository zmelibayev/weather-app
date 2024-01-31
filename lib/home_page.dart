/*

import 'package:flutter/material.dart';
import 'package:weather_app/api_service.dart';
import 'package:weather_app/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Weather> newData;

  @override
  void initState() {
    getWeather().then((value){
      newData = ;
    super.initState();
  });
  
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: FutureBuilder(
        future: newData,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            // Replace this with your UI to display weather data
          }
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data[1].cityName),
                subtitle: Text(snapshot.data[1].temp.toString()),
              );
            },
          );
        },
      ),
    );
  }
}


*/