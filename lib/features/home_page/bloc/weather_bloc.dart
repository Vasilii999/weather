
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/home_page/bloc/weather_event.dart';
import 'package:weather/features/home_page/bloc/weather_state.dart';
import 'package:weather/repository/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent,WeatherState>{
  WeatherBloc(this.weatherRepository)
  : super(WeatherInitial()) {
    on<WeatherLoad>(_load);
  }

  final WeatherRepository weatherRepository;


  Future<void> _load(
      WeatherLoad event,
      Emitter<WeatherState> emit,
      ) async {
    try {
      if(state is! WeatherLoaded) {
        emit(WeatherLoading());
      }
      final weather = await weatherRepository.getWeather();

      emit(WeatherLoaded(weatherLocation: weather ));
    }
    catch (e) {
      print(e);
      emit(WeatherFailure());
    }
  }

}