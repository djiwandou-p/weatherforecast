class GetCurrentWeatherRequest {
  double lat;
  double lon;
  int cnt;
  String appid;
  String units;

  GetCurrentWeatherRequest({this.lat, this.lon, this.cnt, this.appid, this.units});

  GetCurrentWeatherRequest.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    cnt = json['cnt'];
    appid = json['appid'];
    units = json['units'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['cnt'] = this.cnt;
    data['appid'] = this.appid;
    data['units'] = this.units;
    return data;
  }
}
