import 'package:flutter/material.dart';
import 'package:weatherforecast/presentation/pages/sequence.dart';
import 'package:weatherforecast/presentation/pages/weather.dart';

class Routers {
  static Map<String, Widget Function(BuildContext)> get route {
    return <String, WidgetBuilder>{
      Sequence.routeName: (BuildContext context) => new Sequence(),
      Weather.routeName: (BuildContext context) => new Weather(),
    };
  }
}
