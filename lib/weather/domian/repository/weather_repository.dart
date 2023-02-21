import 'package:weather/weather/domian/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
