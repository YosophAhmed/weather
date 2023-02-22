import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountry {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherByCountry(
    this.baseWeatherRepository,
  );

  Future<Weather> execute(String country) async {
    return await baseWeatherRepository.getWeatherByCountry(country);
  }
}
