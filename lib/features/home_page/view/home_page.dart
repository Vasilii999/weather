import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/home_page/bloc/weather_bloc.dart';
import 'package:weather/features/home_page/bloc/weather_event.dart';
import 'package:weather/features/home_page/bloc/weather_state.dart';
import 'package:weather/repository/weather_repository.dart';
import 'package:weather/features/home_page/widget/weather_response.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final WeatherBloc weatherBloc;

  @override
  void initState() {
    super.initState();
    weatherBloc = WeatherBloc(WeatherRepository());
    weatherBloc.add(WeatherLoad());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherBloc, WeatherState>(
        bloc: weatherBloc,
        builder: (context, state) {
          if(state is WeatherLoading) {
            return Center(child: CircularProgressIndicator(),);
          }
          if(state is WeatherLoaded) {
            return Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/background/Sky.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 64),
                    child: WeatherResponse(weatherLocation: state.weatherLocation),
                  ),
                ]
            );
          }
          return Center(child: Text('Нет данных'),);
        },
      ),
    );
  }
}