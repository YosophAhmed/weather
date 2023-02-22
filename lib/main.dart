import 'package:flutter/material.dart';
import 'package:weather/weather/data/data_source/remote_data_source.dart';
import 'package:weather/weather/data/repository/weather_repository.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';
import 'package:weather/weather/domain/use_cases/get_weather_by_country.dart';
import 'package:weather/weather_app.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSource);
  Weather weather = await GetWeatherByCountry(baseWeatherRepository).execute('Egypt');
  runApp(
    const WeatherApp(),
  );
}
