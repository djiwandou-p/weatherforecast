import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

String getQueryString(Map params, {String prefix: '&', bool inRecursion: false}) {
  String query = '';
  params.forEach((key, value) {
    if (inRecursion) key = '[$key]';
    if (value is String || value is int || value is double || value is bool) {
      (query == "") ? prefix = "?" : prefix = "&";
      query += '$prefix$key=$value';
    } else if (value is List || value is Map) {
      if (value is List) value = value.asMap();
      value.forEach((k, v) {
        (k == 0) ? prefix = "" : prefix = "&";
        query += getQueryString({k: v}, prefix: '$prefix$key', inRecursion: true);
      });
    }
  });
  return query;
}

String doubleTrimmer(double number) {
  String _temp = number.toString();
  List<String> _splitted = _temp.split('.');
  int _secondary = int.tryParse(_splitted[1]) ?? 0;
  return (_secondary != 0) ? number.toString() : _temp.split('.')[0];
}

String dateToReadable(DateTime date) => DateFormat("yyyy-MM-dd").format(date);

Future<Position> getPosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) return Future.error('GPS not active');

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever)
      return Future.error(
          'Permanently denied, cannot get a permission. Ensure the GPS Access is allowed');
    if (permission == LocationPermission.denied)
      return Future.error('Location access permissions are denied');
  }
  return await Geolocator.getCurrentPosition();
}

DateTime unixToDate(int unix) => DateTime.fromMillisecondsSinceEpoch(unix * 1000);
