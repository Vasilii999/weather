import 'package:flutter/material.dart';
import 'package:weather/repository/models/weather_location.dart';

class WeatherResponse extends StatelessWidget {
  const WeatherResponse({super.key, required this.weatherLocation});

  final WeatherLocation weatherLocation;

  @override
  Widget build(BuildContext context) {
    final weather = weatherLocation;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                  ],
                ),
              ),

              Text(
                '${weather.location.name}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 120,),
              Text(
                '${weather.current.tempC}°C',
                style: TextStyle(fontSize: 72, color: Colors.white),
              ),
              Text(
                weather.current.condition.text,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              // Text(
              //   'Регион: ${weather.location.region}',
              //   style: TextStyle(fontSize: 24, color: Colors.white),
              // ),
              // Text(
              //   'Страна: ${weather.location.country}',
              //   style: TextStyle(fontSize: 24, color: Colors.white),
              // ),
              Text(
                'Время: ${weather.location.localtime}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              // Text(
              //   'Часть света: ${weather.location.tzId}',
              //   style: TextStyle(fontSize: 24, color: Colors.white),
              // ),

              Text(
                'Скорость ветра: ${weather.current.windKph}км/ч',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                'Облака: ${weather.current.cloud}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
          Positioned(
            left: -20,
              child: Image.network('https:${weather.current.condition.icon}',width: 128,fit: BoxFit.contain,),
          ),
        ],
      ),
    );
  }
}
