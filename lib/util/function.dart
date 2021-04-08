import 'package:geolocator/geolocator.dart';

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

Future<Position> getPosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) return Future.error('GPS Tidak aktif');

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Tidak dapat melanjutkan, Akses lokasi tidak di izinkan secara permanen. Silahkan atur / konfigurasi izin lokasi terlebih dahulu');
    }

    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  return await Geolocator.getCurrentPosition();
}
