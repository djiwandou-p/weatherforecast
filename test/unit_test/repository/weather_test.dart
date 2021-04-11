import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weatherforecast/model/weather/get_current_weather_request.dart';
import 'package:weatherforecast/model/weather/get_current_weather_response.dart';
import 'package:weatherforecast/model/weather/get_weathers_request.dart';
import 'package:weatherforecast/model/weather/get_weathers_response.dart';
import 'package:weatherforecast/repository/weather_client.dart';

class MockWeatherClient extends Mock implements WeatherClient {}

void main() {
  MockWeatherClient _mockWeather = new MockWeatherClient();
  group('Get current weather', () {
    setUp(() {});
    tearDown(() {});

    test('Test successful asyncrounus', () async {
      /// Http request
      GetCurrentWeatherRequest _request =
          new GetCurrentWeatherRequest(lat: -6.9806453, lon: 107.524747, cnt: 1);

      /// Mock async behaviour
      when(_mockWeather.getCurrentWeather(_request)).thenAnswer((realInvocation) => Future.value(
          GetCurrentWeatherResponse.fromJson(GetCurrentWeatherResponse.exampleResponse)));

      /// Test case
      Map<String, dynamic> _result =
          await _mockWeather.getCurrentWeather(_request).then((value) => value.toJson());
      Map<String, dynamic> _expected =
          GetCurrentWeatherResponse.fromJson(GetCurrentWeatherResponse.exampleResponse).toJson();

      /// Test result validate
      expect(_result, _expected);
    });

    test('Test unsuccessful asyncrounus (no internet)', () async {
      /// Http request
      GetCurrentWeatherRequest _request =
          new GetCurrentWeatherRequest(lat: -6.9806453, lon: 107.524747, cnt: 1);

      /// Mock async behaviour
      when(_mockWeather.getCurrentWeather(_request))
          .thenThrow(SocketException("No internet connection"));

      /// Test result validate
      expect(() => _mockWeather.getCurrentWeather(_request), throwsException);
    });
    test('Test unsuccessful asyncrounus (timeout)', () async {
      /// Http request
      GetCurrentWeatherRequest _request =
          new GetCurrentWeatherRequest(lat: -6.9806453, lon: 107.524747, cnt: 1);

      /// Mock async behaviour
      when(_mockWeather.getCurrentWeather(_request)).thenThrow(TimeoutException("Server hangup"));

      /// Test result validate
      expect(() => _mockWeather.getCurrentWeather(_request), throwsException);
    });
  });

  group('Get weather history', () {
    setUp(() {});
    tearDown(() {});

    test('Test successful asyncrounus', () async {
      /// Http request

      GetWeathersRequest _request =
          new GetWeathersRequest(lat: -6.9806453, lon: 107.524747, exclude: "current,minutely");

      /// Mock async behaviour
      when(_mockWeather.getWeathers(_request)).thenAnswer((realInvocation) =>
          Future.value(GetWeathersResponse.fromJson(GetWeathersResponse.exampleResponse)));

      /// Test case
      Map<String, dynamic> _result =
          await _mockWeather.getWeathers(_request).then((value) => value.toJson());
      Map<String, dynamic> _expected =
          GetWeathersResponse.fromJson(GetWeathersResponse.exampleResponse).toJson();

      /// Test result validate
      expect(_result, _expected);
    });

    test('Test unsuccessful asyncrounus (no internet)', () async {
      /// Http request
      GetWeathersRequest _request =
          new GetWeathersRequest(lat: -6.9806453, lon: 107.524747, exclude: "current,minutely");

      /// Mock async behaviour
      when(_mockWeather.getWeathers(_request)).thenThrow(SocketException("No internet connection"));

      /// Test result validate
      expect(() => _mockWeather.getWeathers(_request), throwsException);
    });
    test('Test unsuccessful asyncrounus (timeout)', () async {
      /// Http request
      GetWeathersRequest _request =
          new GetWeathersRequest(lat: -6.9806453, lon: 107.524747, exclude: "current,minutely");

      /// Mock async behaviour
      when(_mockWeather.getWeathers(_request)).thenThrow(TimeoutException("Server hangup"));

      /// Test result validate
      expect(() => _mockWeather.getWeathers(_request), throwsException);
    });
  });
}
