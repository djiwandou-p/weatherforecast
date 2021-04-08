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
        title: Text("Weather display"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            currentWeather(context),
          ],
        ),
      ),
    );
  }

  Widget summaryInfo(BuildContext context, List<CurrentWeatherData> currentWeatherData) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          summaryCard(context, "Temperature", "${currentWeatherData.first.main.temp.toString()} \u2103"),
          SizedBox(width: 15),
          summaryCard(context, "Humidity", "${currentWeatherData.first.main.humidity.toString()} %"),
          SizedBox(width: 15),
          summaryCard(context, "Air Pressure", "${currentWeatherData.first.main.pressure.toString()} Bar"),
        ],
      ),
    );
  }

  Widget summaryCard(BuildContext context, String title, String content) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              content,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget currentWeather(BuildContext context) {
    return FutureBuilder<GetCurrentWeatherResponse>(
      future: getCurrentWeatherResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              summaryInfo(context, snapshot.data.currentWeatherData),
            ],
          );
        }

        if (snapshot.hasError) return Text("There is an error");
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Future<void> initialFetch(BuildContext context) async {
    Position _position = await getPosition();
    fetchCurrentWeather(context, _position);
    fetchWeathers(context, _position);
  }

  Future<void> fetchCurrentWeather(BuildContext context, Position position) async {
    GetCurrentWeatherRequest _request = new GetCurrentWeatherRequest(lat: position.latitude, lon: position.longitude, cnt: 1);
    setState(() {
      getCurrentWeatherResponse = weatherClient.getCurrentWeather(_request);
    });
  }

  Future<void> fetchWeathers(BuildContext context, Position position) async {
    GetWeathersRequest _request = new GetWeathersRequest(lat: position.latitude, lon: position.longitude, exclude: "current,minutely,hourly");
    setState(() {
      getWeathersResponse = weatherClient.getWeathers(_request);
    });
  }
}
