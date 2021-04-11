import 'package:cached_network_image/cached_network_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weatherforecast/model/weather/get_current_weather_request.dart';
import 'package:weatherforecast/model/weather/get_current_weather_response.dart';
import 'package:weatherforecast/model/weather/get_weathers_request.dart';
import 'package:weatherforecast/model/weather/get_weathers_response.dart';
import 'package:weatherforecast/presentation/widgets/block.dart';
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
      body: RefreshIndicator(
        onRefresh: () => refreshWeather(context),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                currentWeather(context),
                weathers(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget summaryPlaceholder() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
          child: Row(
            children: [
              Expanded(
                child: Block(
                  height: 60,
                  width: double.maxFinite,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Block(
                  height: 60,
                  width: double.maxFinite,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Block(
                  height: 60,
                  width: double.maxFinite,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget hourlyPlaceholder(BuildContext context) {
    return Column(
      children: [
        Block(
          height: 250,
          width: double.maxFinite,
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
          borderRadius: BorderRadius.circular(10),
        ),
        Block(
          height: 400,
          width: double.maxFinite,
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.fromLTRB(15, 7.5, 15, 15),
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    );
  }

  Widget summaryInfo(BuildContext context, List<CurrentWeatherData> currentWeatherData) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
      child: Row(
        children: [
          summaryCard(
              context, "Temperature", "${currentWeatherData.first.main.temp.toString()} \u2103"),
          SizedBox(width: 15),
          summaryCard(
              context, "Humidity", "${currentWeatherData.first.main.humidity.toString()} %"),
          SizedBox(width: 15),
          summaryCard(
              context, "Air Pressure", "${currentWeatherData.first.main.pressure.toString()} Bar"),
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
        if (snapshot.hasData) return summaryInfo(context, snapshot.data.currentWeatherData);
        if (snapshot.hasError) return summaryPlaceholder();
        return Shimmer.fromColors(
          baseColor: Colors.grey[200],
          highlightColor: Colors.white,
          child: summaryPlaceholder(),
        );
      },
    );
  }

  Widget hourlyInformation(BuildContext context, List<Hourly> hourly) {
    return Container(
      height: 250,
      width: double.maxFinite,
      padding: EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Last 7 hours",
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 18,
                ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BarChart(
                BarChartData(
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      margin: 16,
                      getTitles: (double value) => "${doubleTrimmer(value)}:00",
                    ),
                    leftTitles: SideTitles(
                      margin: 15,
                      showTitles: true,
                      interval: 5,
                      getTextStyles: (value) => const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.blue[900],
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        return BarTooltipItem(
                          "${unixToDate(hourly[groupIndex].dt).hour}:00, Temperature ${hourly[groupIndex].temp}\u2103",
                          TextStyle(color: Colors.white),
                        );
                      },
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: hourly
                      .map(
                        (item) => BarChartGroupData(
                          x: unixToDate(item.dt).hour,
                          barRods: [
                            BarChartRodData(
                              colors: [Colors.blue],
                              width: 15,
                              y: item.temp,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget weatherHistory(BuildContext context, List<Daily> daily) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(15, 7.5, 15, 15),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: daily.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "https://openweathermap.org/img/wn/${daily[index].weather.first.icon}@2x.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dateToReadable(
                            unixToDate(daily[index].dt),
                          ),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                            "${daily[index].temp.min.toString()}\u2103 - ${daily[index].temp.max.toString()}\u2103")
                      ],
                    ),
                  ],
                ),
                Text(
                  "${daily[index].temp.day}\u2103",
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget weathers(BuildContext context) {
    return FutureBuilder<GetWeathersResponse>(
      future: getWeathersResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Hourly> hourly = snapshot.data.hourly.reversed.toList();
          List<Daily> daily = snapshot.data.daily.reversed.toList();
          hourly = hourly.getRange(0, 7).toList();
          daily = daily.getRange(0, 7).toList();
          return Column(
            children: [
              hourlyInformation(context, hourly),
              weatherHistory(context, daily),
            ],
          );
        }

        if (snapshot.hasError) return Text("There is an error");
        return Shimmer.fromColors(
          baseColor: Colors.grey[200],
          highlightColor: Colors.white,
          child: Column(
            children: [
              hourlyPlaceholder(context),
            ],
          ),
        );
      },
    );
  }

  Future<void> initialFetch(BuildContext context) async {
    Position _position = await getPosition();
    fetchCurrentWeather(context, _position);
    fetchWeathers(context, _position);
  }

  Future<void> fetchCurrentWeather(BuildContext context, Position position) async {
    GetCurrentWeatherRequest _request =
        new GetCurrentWeatherRequest(lat: position.latitude, lon: position.longitude, cnt: 1);
    setState(() {
      getCurrentWeatherResponse = weatherClient.getCurrentWeather(_request);
    });
  }

  Future<void> fetchWeathers(BuildContext context, Position position) async {
    GetWeathersRequest _request = new GetWeathersRequest(
        lat: position.latitude, lon: position.longitude, exclude: "current,minutely");
    setState(() {
      getWeathersResponse = weatherClient.getWeathers(_request);
    });
  }

  Future<void> refreshWeather(BuildContext context) async {
    initialFetch(context);
  }
}
