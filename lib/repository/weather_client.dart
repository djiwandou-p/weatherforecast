import 'dart:convert';

import 'package:http/http.dart';
import 'package:weatherforecast/env.dart';
import 'package:weatherforecast/model/weather/get_current_weather_request.dart';
import 'package:weatherforecast/model/weather/get_current_weather_response.dart';
import 'package:weatherforecast/model/weather/get_weathers_request.dart';
import 'package:weatherforecast/model/weather/get_weathers_response.dart';
import 'package:weatherforecast/repository/headers.dart';
import 'dart:developer' as developer;

import 'package:weatherforecast/util/function.dart';

class WeatherClient {
  final String units;
  final String appId;
  WeatherClient({this.units = "metric", this.appId = Env.openWeatherApiKey});

  Future<GetCurrentWeatherResponse> getCurrentWeather(GetCurrentWeatherRequest _request) async {
    _request.appid = appId;
    _request.units = units;
    String url = "${Env.openWeatherApi}/data/2.5/find";
    url = url + getQueryString(_request.toJson());
    developer.log(url, name: "Request");
    return await get(Uri.parse(url), headers: Headers.header)
        .timeout(const Duration(seconds: 5))
        .then((response) {
      developer.log(response.body, name: "Response");
      return GetCurrentWeatherResponse.fromJson(json.decode(response.body));
    }).catchError((ex) {
      print(ex.toString());
    });
  }

  Future<GetWeathersResponse> getWeathers(GetWeathersRequest _request) async {
    _request.appid = appId;
    _request.units = units;
    String url = "${Env.openWeatherApi}/data/2.5/onecall";
    url = url + getQueryString(_request.toJson());
    developer.log(url, name: "Request");
    return await get(Uri.parse(url), headers: Headers.header)
        .timeout(const Duration(seconds: 5))
        .then((response) {
      developer.log(response.body, name: "Response");
      return GetWeathersResponse.fromJson(json.decode(response.body));
    }).catchError((ex) {
      print(ex.toString());
    });
  }
}
