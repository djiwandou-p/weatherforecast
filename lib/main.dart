import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weatherforecast/config/routers/routers.dart';
import 'package:weatherforecast/config/themes/themes.dart';
import 'package:weatherforecast/presentation/pages/sequence.dart';
import 'package:weatherforecast/presentation/pages/weather.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        title: 'CAD-IoT Application',
        theme: Themes.defaultThemes(context),
        home: MyHomePage(title: 'CAD-IoT Application'),
        routes: Routers.route,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Welcome",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 10),
              Text("This application is being made by dwi kurnianto mulyadien, to pass CAD-IT Consultant competency test. This application has 2 main feature, sequential program, and weather display"),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Sequence.routeName);
                },
                child: Text("Sequential"),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Weather.routeName);
                },
                child: Text("Weather display"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
