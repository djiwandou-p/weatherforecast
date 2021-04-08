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
  WeatherClient({this.units = "imperial", this.appId = Env.openWeatherApi});

  Future<GetCurrentWeatherResponse> getCurrentWeather(GetCurrentWeatherRequest _request) async {
    String url = "${Env.openWeatherApi}/data/2.5/find";
    url = url + getQueryString(_request.toJson());
    _request.appid = appId;
    developer.log(url, name: "Request");
    return await get(Uri.parse(url), headers: Headers.header).timeout(const Duration(seconds: 5)).then((response) {
      developer.log(response.body, name: "Response");
      return GetCurrentWeatherResponse.fromJson(json.decode(response.body));
    });
  }

  Future<GetWeathersResponse> getWeathers(GetWeathersRequest _request) async {
    String url = "${Env.openWeatherApi}/data/2.5/onecall";
    url = url + getQueryString(_request.toJson());
    _request.appid = appId;
    developer.log(url, name: "Request");
    return await get(Uri.parse(url), headers: Headers.header).timeout(const Duration(seconds: 5)).then((response) {
      developer.log(response.body, name: "Response");
      return GetWeathersResponse.fromJson(json.decode(response.body));
    });
  }
}
