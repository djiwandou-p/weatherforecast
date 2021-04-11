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
          "https://api.openweathermap.org/data/2.5/find?lat=-6.9229017&lon=107.6043167&cnt=1&appid=d88af5b3d171caf9614c8c3b9fa66e6b&units=metric";
      expect(_result, _expected);
    });
    test('Convert weather history request to param', () async {
      GetWeathersRequest _request =
          new GetWeathersRequest(lat: -6.9806453, lon: 107.524747, exclude: "current,minutely");
      String _result = "${Env.openWeatherApi}/data/2.5/find";
      _result = _result + getQueryString(_request.toJson());
      String _expected =
          "https://api.openweathermap.org/data/2.5/onecall?lat=-6.9229017&lon=107.6043167&exclude=current,minutely&appid=d88af5b3d171caf9614c8c3b9fa66e6b&units=metric";
      expect(_result, _expected);
    });
  });
}
