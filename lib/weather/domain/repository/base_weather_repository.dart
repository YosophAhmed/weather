import '../entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCountry(String country);
}
