import 'package:weather/weather/data/data_source/remote_data_source.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(
    this.baseRemoteDataSource,
  );

  @override
  Future<Weather> getWeatherByCountry(String country) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(
      country,
    ))!;
  }
}
