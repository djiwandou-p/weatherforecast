import 'package:flutter_test/flutter_test.dart';
import 'package:weatherforecast/env.dart';
import 'package:weatherforecast/model/weather/get_current_weather_request.dart';
import 'package:weatherforecast/model/weather/get_weathers_request.dart';
import 'package:weatherforecast/util/function.dart';

void main() {
  group("Convert class to query param", () {
    test('Convert current weather request to param', () async {
      GetCurrentWeatherRequest _request =
          new GetCurrentWeatherRequest(lat: -6.9806453, lon: 107.524747, cnt: 1);
      String _result = "${Env.openWeatherApi}/data/2.5/find";
      _result = _result + getQueryString(_request.toJson());
      String _expected =
          "https://api.openweathermap.org/data/2.5/find?lat=-6.9806453&lon=107.524747&cnt=1";
      expect(_result, _expected);
    });
    test('Convert weather history request to param', () async {
      GetWeathersRequest _request = new GetWeathersRequest(
          lat: -6.9806453, lon: 107.524747, exclude: "current,minutely", units: "metric");
      String _result = "${Env.openWeatherApi}/data/2.5/onecall";
      _result = _result + getQueryString(_request.toJson());
      String _expected =
          "https://api.openweathermap.org/data/2.5/onecall?lat=-6.9806453&lon=107.524747&exclude=current,minutely&units=metric";
      expect(_result, _expected);
    });
  });

  group("Test double trimmer", () {
    test('Test with 0 after . (2.0)', () async {
      String _result = doubleTrimmer(2.0);
      expect(_result, "2");
    });
    test('Test with > 0 after . (2.1)', () async {
      String _result = doubleTrimmer(2.1);
      expect(_result, "2.1");
    });
  });
  group("Test double trimmer", () {
    test('Test with 0 after . (2.0)', () async {
      String _result = doubleTrimmer(2.0);
      expect(_result, "2");
    });
    test('Test with > 0 after . (2.1)', () async {
      String _result = doubleTrimmer(2.1);
      expect(_result, "2.1");
    });
  });
}
