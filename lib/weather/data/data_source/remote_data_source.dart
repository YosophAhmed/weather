import 'package:weather/core/utils/constants.dart';

import '../models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
        '${AppConstants.baseUrl}/weather?q=$countryName&appid=${AppConstants.appId}',
      );
      return WeatherModel.fromJson(
        response.data,
      );
    } catch (error) {
      return null;
    }
  }
}
