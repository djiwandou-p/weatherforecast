class GetWeathersRequest {
  double lat;
  double lon;
  String exclude;
  String appid;
  String units;

  GetWeathersRequest({this.lat, this.lon, this.exclude, this.appid, this.units});

  GetWeathersRequest.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    exclude = json['exclude'];
    appid = json['appid'];
    units = json['units'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['exclude'] = this.exclude;
    data['appid'] = this.appid;
    data['units'] = this.units;
    return data;
  }
}
