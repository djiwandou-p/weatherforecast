class GetCurrentWeatherResponse {
  String message;
  String cod;
  int count;
  List<CurrentWeatherData> currentWeatherData;

  GetCurrentWeatherResponse({this.message, this.cod, this.count, this.currentWeatherData});

  GetCurrentWeatherResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    cod = (json['cod'] is int) ? json['cod'].toString() : json['cod'];
    count = json['count'];
    if (json['list'] != null) {
      currentWeatherData = [];
      json['list'].forEach((v) {
        currentWeatherData.add(new CurrentWeatherData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['cod'] = this.cod;
    data['count'] = this.count;
    if (this.currentWeatherData != null) {
      data['list'] = this.currentWeatherData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CurrentWeatherData {
  int id;
  String name;
  Coord coord;
  Main main;
  int dt;
  Wind wind;
  Sys sys;
  int rain;
  Snow snow;
  Clouds clouds;
  List<Weather> weather;

  CurrentWeatherData({this.id, this.name, this.coord, this.main, this.dt, this.wind, this.sys, this.rain, this.snow, this.clouds, this.weather});

  CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
    main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    dt = json['dt'];
    wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
    sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
    rain = json['rain'];
    snow = json['snow'] != null ? new Snow.fromJson(json['snow']) : null;
    clouds = json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.coord != null) {
      data['coord'] = this.coord.toJson();
    }
    if (this.main != null) {
      data['main'] = this.main.toJson();
    }
    data['dt'] = this.dt;
    if (this.wind != null) {
      data['wind'] = this.wind.toJson();
    }
    if (this.sys != null) {
      data['sys'] = this.sys.toJson();
    }
    data['rain'] = this.rain;
    if (this.snow != null) {
      data['snow'] = this.snow.toJson();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Coord {
  double lat;
  double lon;

  Coord({this.lat, this.lon});

  Coord.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    return data;
  }
}

class Main {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  double pressure;
  double humidity;

  Main({this.temp, this.feelsLike, this.tempMin, this.tempMax, this.pressure, this.humidity});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    humidity = (json['temp_min'] is int) ? double.tryParse(json['temp_min'].toString()) : json['temp_min'];
    tempMax = json['temp_max'];
    pressure = (json['pressure'] is int) ? double.tryParse(json['pressure'].toString()) : json['pressure'];
    humidity = (json['humidity'] is int) ? double.tryParse(json['humidity'].toString()) : json['humidity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['temp_min'] = this.tempMin;
    data['temp_max'] = this.tempMax;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    return data;
  }
}

class Wind {
  double speed;
  double deg;

  Wind({this.speed, this.deg});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = (json['deg'] is int) ? double.tryParse(json['deg'].toString()) : json['deg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    data['deg'] = this.deg;
    return data;
  }
}

class Sys {
  String country;

  Sys({this.country});

  Sys.fromJson(Map<String, dynamic> json) {
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    return data;
  }
}

class Snow {
  int i1h;

  Snow({this.i1h});

  Snow.fromJson(Map<String, dynamic> json) {
    i1h = json['1h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1h'] = this.i1h;
    return data;
  }
}

class Clouds {
  int all;

  Clouds({this.all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    return data;
  }
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}
