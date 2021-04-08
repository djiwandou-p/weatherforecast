import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherforecast/model/weather/get_current_weather_request.dart';
import 'package:weatherforecast/model/weather/get_current_weather_response.dart';
import 'package:weatherforecast/model/weather/get_weathers_request.dart';
import 'package:weatherforecast/model/weather/get_weathers_response.dart';
import 'package:weatherforecast/repository/weather_client.dart';
import 'package:weatherforecast/util/function.dart';

class Weather extends StatefulWidget {
  static const String routeName = "weather";
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  WeatherClient weatherClient = new WeatherClient();
  Future<GetCurrentWeatherResponse> getCurrentWeatherResponse;
  Future<GetWeathersResponse> getWeathersResponse;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      initialFetch(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuaca"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  Future<void> initialFetch(BuildContext context) async {
    Position _position = await getPosition();
    fetchCurrentWeather(context, _position);
    fetchWeathers(context, _position);
  }

  Future<void> fetchCurrentWeather(BuildContext context, Position position) async {
    GetCurrentWeatherRequest _request = new GetCurrentWeatherRequest(lat: position.latitude, lon: position.longitude, cnt: 10);
    getCurrentWeatherResponse = weatherClient.getCurrentWeather(_request);
  }

  Future<void> fetchWeathers(BuildContext context, Position position) async {
    GetWeathersRequest _request = new GetWeathersRequest(lat: position.latitude, lon: position.longitude, exclude: "current,minutely,hourly");
    getWeathersResponse = weatherClient.getWeathers(_request);
  }
}
