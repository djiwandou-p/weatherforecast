class GetWeathersResponse {
  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  List<Daily> daily;
  List<Hourly> hourly;

  GetWeathersResponse(
      {this.lat, this.lon, this.timezone, this.timezoneOffset, this.daily, this.hourly});

  static const Map<String, dynamic> exampleResponse = {
    "lat": -6.9806,
    "lon": 107.5247,
    "timezone": "Asia/Jakarta",
    "timezone_offset": 25200,
    "hourly": [
      {
        "dt": 1618149600,
        "temp": 73.99,
        "feels_like": 75.24,
        "pressure": 1012,
        "humidity": 88,
        "dew_point": 70.21,
        "uvi": 0,
        "clouds": 94,
        "visibility": 10000,
        "wind_speed": 0.76,
        "wind_deg": 35,
        "wind_gust": 1.25,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.53,
        "rain": {"1h": 0.23}
      },
      {
        "dt": 1618153200,
        "temp": 73.31,
        "feels_like": 74.57,
        "pressure": 1013,
        "humidity": 90,
        "dew_point": 70.2,
        "uvi": 0,
        "clouds": 92,
        "visibility": 10000,
        "wind_speed": 0.56,
        "wind_deg": 109,
        "wind_gust": 0.56,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.56
      },
      {
        "dt": 1618156800,
        "temp": 72.66,
        "feels_like": 73.96,
        "pressure": 1014,
        "humidity": 92,
        "dew_point": 70.2,
        "uvi": 0,
        "clouds": 92,
        "visibility": 10000,
        "wind_speed": 1.34,
        "wind_deg": 113,
        "wind_gust": 1.36,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.56
      },
      {
        "dt": 1618160400,
        "temp": 72.01,
        "feels_like": 73.29,
        "pressure": 1014,
        "humidity": 93,
        "dew_point": 69.87,
        "uvi": 0,
        "clouds": 92,
        "visibility": 10000,
        "wind_speed": 1.83,
        "wind_deg": 174,
        "wind_gust": 1.83,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.64
      },
      {
        "dt": 1618164000,
        "temp": 70.74,
        "feels_like": 71.89,
        "pressure": 1014,
        "humidity": 93,
        "dew_point": 68.61,
        "uvi": 0,
        "clouds": 84,
        "visibility": 10000,
        "wind_speed": 2.44,
        "wind_deg": 176,
        "wind_gust": 2.37,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10n"}
        ],
        "pop": 0.72,
        "rain": {"1h": 1.31}
      },
      {
        "dt": 1618167600,
        "temp": 71.1,
        "feels_like": 72.23,
        "pressure": 1013,
        "humidity": 92,
        "dew_point": 66.51,
        "uvi": 0,
        "clouds": 83,
        "visibility": 10000,
        "wind_speed": 1.72,
        "wind_deg": 165,
        "wind_gust": 1.92,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.79,
        "rain": {"1h": 0.57}
      },
      {
        "dt": 1618171200,
        "temp": 70.74,
        "feels_like": 71.83,
        "pressure": 1013,
        "humidity": 92,
        "dew_point": 66.15,
        "uvi": 0,
        "clouds": 66,
        "visibility": 10000,
        "wind_speed": 2.13,
        "wind_deg": 165,
        "wind_gust": 2.15,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.75,
        "rain": {"1h": 0.21}
      },
      {
        "dt": 1618174800,
        "temp": 70.45,
        "feels_like": 71.47,
        "pressure": 1013,
        "humidity": 91,
        "dew_point": 65.86,
        "uvi": 0,
        "clouds": 67,
        "visibility": 10000,
        "wind_speed": 2.71,
        "wind_deg": 166,
        "wind_gust": 2.68,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.86,
        "rain": {"1h": 0.31}
      },
      {
        "dt": 1618178400,
        "temp": 70.43,
        "feels_like": 71.4,
        "pressure": 1014,
        "humidity": 90,
        "dew_point": 65.44,
        "uvi": 0,
        "clouds": 71,
        "visibility": 10000,
        "wind_speed": 2.28,
        "wind_deg": 163,
        "wind_gust": 2.44,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.8,
        "rain": {"1h": 0.14}
      },
      {
        "dt": 1618182000,
        "temp": 70.27,
        "feels_like": 71.22,
        "pressure": 1014,
        "humidity": 90,
        "dew_point": 65.14,
        "uvi": 0,
        "clouds": 64,
        "visibility": 10000,
        "wind_speed": 2.46,
        "wind_deg": 164,
        "wind_gust": 2.46,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.69
      },
      {
        "dt": 1618185600,
        "temp": 73.17,
        "feels_like": 74.14,
        "pressure": 1015,
        "humidity": 84,
        "dew_point": 66.27,
        "uvi": 0.62,
        "clouds": 59,
        "visibility": 10000,
        "wind_speed": 1.34,
        "wind_deg": 159,
        "wind_gust": 2.01,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.57
      },
      {
        "dt": 1618189200,
        "temp": 76.71,
        "feels_like": 77.65,
        "pressure": 1015,
        "humidity": 76,
        "dew_point": 66.7,
        "uvi": 2.47,
        "clouds": 51,
        "visibility": 10000,
        "wind_speed": 0.67,
        "wind_deg": 35,
        "wind_gust": 0.76,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.22
      },
      {
        "dt": 1618192800,
        "temp": 79.68,
        "feels_like": 79.68,
        "pressure": 1015,
        "humidity": 70,
        "dew_point": 67.28,
        "uvi": 5.51,
        "clouds": 54,
        "visibility": 10000,
        "wind_speed": 1.81,
        "wind_deg": 354,
        "wind_gust": 1.54,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.26,
        "rain": {"1h": 0.13}
      },
      {
        "dt": 1618196400,
        "temp": 81.75,
        "feels_like": 84.79,
        "pressure": 1015,
        "humidity": 64,
        "dew_point": 66.58,
        "uvi": 8.91,
        "clouds": 68,
        "visibility": 10000,
        "wind_speed": 3.09,
        "wind_deg": 353,
        "wind_gust": 2.59,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.3
      },
      {
        "dt": 1618200000,
        "temp": 83.34,
        "feels_like": 86.22,
        "pressure": 1014,
        "humidity": 59,
        "dew_point": 65.88,
        "uvi": 10.77,
        "clouds": 76,
        "visibility": 10000,
        "wind_speed": 4.09,
        "wind_deg": 346,
        "wind_gust": 4.23,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.34
      },
      {
        "dt": 1618203600,
        "temp": 84,
        "feels_like": 86.76,
        "pressure": 1012,
        "humidity": 57,
        "dew_point": 65.66,
        "uvi": 11.44,
        "clouds": 81,
        "visibility": 10000,
        "wind_speed": 5.75,
        "wind_deg": 333,
        "wind_gust": 5.3,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.54,
        "rain": {"1h": 0.47}
      },
      {
        "dt": 1618207200,
        "temp": 83.55,
        "feels_like": 86.54,
        "pressure": 1012,
        "humidity": 59,
        "dew_point": 65.91,
        "uvi": 10.13,
        "clouds": 83,
        "visibility": 9189,
        "wind_speed": 6.51,
        "wind_deg": 334,
        "wind_gust": 6.22,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.7,
        "rain": {"1h": 0.88}
      },
      {
        "dt": 1618210800,
        "temp": 81.36,
        "feels_like": 84.18,
        "pressure": 1011,
        "humidity": 64,
        "dew_point": 66.18,
        "uvi": 7.34,
        "clouds": 100,
        "visibility": 7892,
        "wind_speed": 5.06,
        "wind_deg": 343,
        "wind_gust": 6.35,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "pop": 0.86,
        "rain": {"1h": 1.14}
      },
      {
        "dt": 1618214400,
        "temp": 78.94,
        "feels_like": 78.94,
        "pressure": 1011,
        "humidity": 72,
        "dew_point": 67.44,
        "uvi": 4.14,
        "clouds": 100,
        "visibility": 7495,
        "wind_speed": 3.36,
        "wind_deg": 355,
        "wind_gust": 5.59,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "pop": 0.89,
        "rain": {"1h": 1.38}
      },
      {
        "dt": 1618218000,
        "temp": 76.87,
        "feels_like": 77.97,
        "pressure": 1011,
        "humidity": 79,
        "dew_point": 67.91,
        "uvi": 1.61,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 2.35,
        "wind_deg": 322,
        "wind_gust": 4.72,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "pop": 0.89,
        "rain": {"1h": 1.39}
      },
      {
        "dt": 1618221600,
        "temp": 76.01,
        "feels_like": 77.16,
        "pressure": 1012,
        "humidity": 82,
        "dew_point": 68.18,
        "uvi": 0.37,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 2.04,
        "wind_deg": 306,
        "wind_gust": 3.42,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.89,
        "rain": {"1h": 0.59}
      },
      {
        "dt": 1618225200,
        "temp": 74.19,
        "feels_like": 75.36,
        "pressure": 1013,
        "humidity": 86,
        "dew_point": 67.64,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.48,
        "wind_deg": 289,
        "wind_gust": 2.06,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.86,
        "rain": {"1h": 0.48}
      },
      {
        "dt": 1618228800,
        "temp": 73.56,
        "feels_like": 74.71,
        "pressure": 1014,
        "humidity": 87,
        "dew_point": 67.3,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 0.92,
        "wind_deg": 261,
        "wind_gust": 1.52,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.86,
        "rain": {"1h": 0.45}
      },
      {
        "dt": 1618232400,
        "temp": 73.31,
        "feels_like": 74.43,
        "pressure": 1015,
        "humidity": 87,
        "dew_point": 67.46,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.28,
        "wind_deg": 240,
        "wind_gust": 1.52,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.45,
        "rain": {"1h": 0.21}
      },
      {
        "dt": 1618236000,
        "temp": 73.09,
        "feels_like": 74.25,
        "pressure": 1015,
        "humidity": 88,
        "dew_point": 67.55,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.28,
        "wind_deg": 214,
        "wind_gust": 1.34,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.38
      },
      {
        "dt": 1618239600,
        "temp": 72.45,
        "feels_like": 73.62,
        "pressure": 1015,
        "humidity": 90,
        "dew_point": 67.21,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.28,
        "wind_deg": 199,
        "wind_gust": 1.28,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.34
      },
      {
        "dt": 1618243200,
        "temp": 71.82,
        "feels_like": 72.93,
        "pressure": 1014,
        "humidity": 90,
        "dew_point": 66.92,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.88,
        "wind_deg": 199,
        "wind_gust": 1.66,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.26
      },
      {
        "dt": 1618246800,
        "temp": 71.49,
        "feels_like": 72.57,
        "pressure": 1014,
        "humidity": 90,
        "dew_point": 66.61,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.99,
        "wind_deg": 190,
        "wind_gust": 1.7,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.22
      },
      {
        "dt": 1618250400,
        "temp": 71.01,
        "feels_like": 72.03,
        "pressure": 1013,
        "humidity": 90,
        "dew_point": 65.91,
        "uvi": 0,
        "clouds": 100,
        "visibility": 10000,
        "wind_speed": 1.92,
        "wind_deg": 182,
        "wind_gust": 1.81,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.21
      },
      {
        "dt": 1618254000,
        "temp": 70.2,
        "feels_like": 71.1,
        "pressure": 1013,
        "humidity": 89,
        "dew_point": 64.67,
        "uvi": 0,
        "clouds": 92,
        "visibility": 10000,
        "wind_speed": 1.9,
        "wind_deg": 183,
        "wind_gust": 1.95,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.21
      },
      {
        "dt": 1618257600,
        "temp": 69.42,
        "feels_like": 70.16,
        "pressure": 1013,
        "humidity": 87,
        "dew_point": 63.68,
        "uvi": 0,
        "clouds": 95,
        "visibility": 10000,
        "wind_speed": 3.18,
        "wind_deg": 187,
        "wind_gust": 2.89,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.17
      },
      {
        "dt": 1618261200,
        "temp": 68.95,
        "feels_like": 69.55,
        "pressure": 1013,
        "humidity": 85,
        "dew_point": 62.38,
        "uvi": 0,
        "clouds": 94,
        "visibility": 10000,
        "wind_speed": 3.38,
        "wind_deg": 178,
        "wind_gust": 3.06,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.16
      },
      {
        "dt": 1618264800,
        "temp": 68.43,
        "feels_like": 68.92,
        "pressure": 1014,
        "humidity": 84,
        "dew_point": 61.34,
        "uvi": 0,
        "clouds": 92,
        "visibility": 10000,
        "wind_speed": 3.44,
        "wind_deg": 173,
        "wind_gust": 3.11,
        "weather": [
          {"id": 804, "main": "Clouds", "description": "overcast clouds", "icon": "04n"}
        ],
        "pop": 0.16
      },
      {
        "dt": 1618268400,
        "temp": 67.98,
        "feels_like": 68.38,
        "pressure": 1014,
        "humidity": 83,
        "dew_point": 60.84,
        "uvi": 0,
        "clouds": 78,
        "visibility": 10000,
        "wind_speed": 3.42,
        "wind_deg": 173,
        "wind_gust": 3.29,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.16
      },
      {
        "dt": 1618272000,
        "temp": 71.53,
        "feels_like": 72.05,
        "pressure": 1014,
        "humidity": 78,
        "dew_point": 62.35,
        "uvi": 0.67,
        "clouds": 70,
        "visibility": 10000,
        "wind_speed": 1.83,
        "wind_deg": 164,
        "wind_gust": 2.28,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.16
      },
      {
        "dt": 1618275600,
        "temp": 75.7,
        "feels_like": 76.17,
        "pressure": 1015,
        "humidity": 68,
        "dew_point": 62.71,
        "uvi": 2.65,
        "clouds": 51,
        "visibility": 10000,
        "wind_speed": 0.85,
        "wind_deg": 94,
        "wind_gust": 1.14,
        "weather": [
          {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
        ],
        "pop": 0.01
      },
      {
        "dt": 1618279200,
        "temp": 79.54,
        "feels_like": 79.54,
        "pressure": 1015,
        "humidity": 61,
        "dew_point": 63.18,
        "uvi": 5.92,
        "clouds": 38,
        "visibility": 10000,
        "wind_speed": 1.25,
        "wind_deg": 47,
        "wind_gust": 1.3,
        "weather": [
          {"id": 802, "main": "Clouds", "description": "scattered clouds", "icon": "03d"}
        ],
        "pop": 0.01
      },
      {
        "dt": 1618282800,
        "temp": 82.22,
        "feels_like": 83.82,
        "pressure": 1014,
        "humidity": 55,
        "dew_point": 62.69,
        "uvi": 9.56,
        "clouds": 34,
        "visibility": 10000,
        "wind_speed": 3,
        "wind_deg": 12,
        "wind_gust": 2.04,
        "weather": [
          {"id": 802, "main": "Clouds", "description": "scattered clouds", "icon": "03d"}
        ],
        "pop": 0.1
      },
      {
        "dt": 1618286400,
        "temp": 84.2,
        "feels_like": 85.39,
        "pressure": 1013,
        "humidity": 50,
        "dew_point": 62.17,
        "uvi": 12.46,
        "clouds": 35,
        "visibility": 10000,
        "wind_speed": 3.94,
        "wind_deg": 349,
        "wind_gust": 3.06,
        "weather": [
          {"id": 802, "main": "Clouds", "description": "scattered clouds", "icon": "03d"}
        ],
        "pop": 0.22
      },
      {
        "dt": 1618290000,
        "temp": 84.92,
        "feels_like": 86.11,
        "pressure": 1012,
        "humidity": 49,
        "dew_point": 62.02,
        "uvi": 13.22,
        "clouds": 37,
        "visibility": 10000,
        "wind_speed": 5.21,
        "wind_deg": 342,
        "wind_gust": 4.34,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.26,
        "rain": {"1h": 0.11}
      },
      {
        "dt": 1618293600,
        "temp": 84.81,
        "feels_like": 86.45,
        "pressure": 1011,
        "humidity": 51,
        "dew_point": 62.83,
        "uvi": 11.71,
        "clouds": 43,
        "visibility": 10000,
        "wind_speed": 6.15,
        "wind_deg": 334,
        "wind_gust": 4.7,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.57,
        "rain": {"1h": 0.28}
      },
      {
        "dt": 1618297200,
        "temp": 82.94,
        "feels_like": 85.17,
        "pressure": 1010,
        "humidity": 57,
        "dew_point": 64.27,
        "uvi": 7.14,
        "clouds": 65,
        "visibility": 10000,
        "wind_speed": 6.29,
        "wind_deg": 319,
        "wind_gust": 5.39,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "pop": 0.88,
        "rain": {"1h": 0.61}
      },
      {
        "dt": 1618300800,
        "temp": 79.34,
        "feels_like": 79.34,
        "pressure": 1010,
        "humidity": 70,
        "dew_point": 66.58,
        "uvi": 4.02,
        "clouds": 79,
        "visibility": 9135,
        "wind_speed": 4.54,
        "wind_deg": 308,
        "wind_gust": 6.31,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "pop": 0.95,
        "rain": {"1h": 1.05}
      },
      {
        "dt": 1618304400,
        "temp": 76.84,
        "feels_like": 77.85,
        "pressure": 1011,
        "humidity": 77,
        "dew_point": 67.26,
        "uvi": 1.56,
        "clouds": 86,
        "visibility": 10000,
        "wind_speed": 3.42,
        "wind_deg": 305,
        "wind_gust": 5.99,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "pop": 0.95,
        "rain": {"1h": 1.34}
      },
      {
        "dt": 1618308000,
        "temp": 75.16,
        "feels_like": 76.19,
        "pressure": 1012,
        "humidity": 81,
        "dew_point": 67.12,
        "uvi": 0.21,
        "clouds": 89,
        "visibility": 10000,
        "wind_speed": 3.36,
        "wind_deg": 288,
        "wind_gust": 5.44,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "pop": 0.96,
        "rain": {"1h": 1.19}
      },
      {
        "dt": 1618311600,
        "temp": 73.92,
        "feels_like": 74.97,
        "pressure": 1012,
        "humidity": 84,
        "dew_point": 66.99,
        "uvi": 0,
        "clouds": 91,
        "visibility": 10000,
        "wind_speed": 2.37,
        "wind_deg": 274,
        "wind_gust": 4,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10n"}
        ],
        "pop": 0.99,
        "rain": {"1h": 0.85}
      },
      {
        "dt": 1618315200,
        "temp": 73.15,
        "feels_like": 74.21,
        "pressure": 1013,
        "humidity": 86,
        "dew_point": 66.83,
        "uvi": 0,
        "clouds": 93,
        "visibility": 10000,
        "wind_speed": 1.92,
        "wind_deg": 237,
        "wind_gust": 3.24,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10n"}
        ],
        "pop": 0.99,
        "rain": {"1h": 1.03}
      },
      {
        "dt": 1618318800,
        "temp": 72.77,
        "feels_like": 73.89,
        "pressure": 1014,
        "humidity": 88,
        "dew_point": 66.87,
        "uvi": 0,
        "clouds": 100,
        "visibility": 6627,
        "wind_speed": 2.1,
        "wind_deg": 200,
        "wind_gust": 2.39,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10n"}
        ],
        "pop": 0.88,
        "rain": {"1h": 1.57}
      }
    ],
    "daily": [
      {
        "dt": 1618113600,
        "sunrise": 1618095088,
        "sunset": 1618138204,
        "temp": {
          "day": 85.17,
          "min": 70.75,
          "max": 85.17,
          "night": 72.66,
          "eve": 76.6,
          "morn": 70.75
        },
        "feels_like": {"day": 88.05, "night": 71.76, "eve": 77.86, "morn": 71.76},
        "pressure": 1013,
        "humidity": 55,
        "dew_point": 65.55,
        "wind_speed": 4,
        "wind_deg": 2,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "clouds": 29,
        "pop": 0.99,
        "rain": 11.7,
        "uvi": 12.98
      },
      {
        "dt": 1618200000,
        "sunrise": 1618181484,
        "sunset": 1618224577,
        "temp": {
          "day": 83.34,
          "min": 70.27,
          "max": 84,
          "night": 71.82,
          "eve": 76.01,
          "morn": 70.43
        },
        "feels_like": {"day": 86.22, "night": 71.4, "eve": 77.16, "morn": 71.4},
        "pressure": 1014,
        "humidity": 59,
        "dew_point": 65.88,
        "wind_speed": 4.09,
        "wind_deg": 346,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "clouds": 76,
        "pop": 0.89,
        "rain": 9.66,
        "uvi": 11.44
      },
      {
        "dt": 1618286400,
        "sunrise": 1618267879,
        "sunset": 1618310951,
        "temp": {
          "day": 84.2,
          "min": 67.98,
          "max": 84.92,
          "night": 71.17,
          "eve": 75.16,
          "morn": 68.43
        },
        "feels_like": {"day": 85.39, "night": 68.92, "eve": 76.19, "morn": 68.92},
        "pressure": 1013,
        "humidity": 50,
        "dew_point": 62.17,
        "wind_speed": 3.94,
        "wind_deg": 349,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "clouds": 35,
        "pop": 1,
        "rain": 10.14,
        "uvi": 13.22
      },
      {
        "dt": 1618372800,
        "sunrise": 1618354275,
        "sunset": 1618397326,
        "temp": {
          "day": 82.81,
          "min": 69.33,
          "max": 82.81,
          "night": 72.05,
          "eve": 78.13,
          "morn": 69.46
        },
        "feels_like": {"day": 86.07, "night": 70.34, "eve": 79.18, "morn": 70.34},
        "pressure": 1012,
        "humidity": 62,
        "dew_point": 66.72,
        "wind_speed": 3.6,
        "wind_deg": 349,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "clouds": 60,
        "pop": 1,
        "rain": 14.89,
        "uvi": 12.73
      },
      {
        "dt": 1618459200,
        "sunrise": 1618440671,
        "sunset": 1618483700,
        "temp": {
          "day": 81.93,
          "min": 69.39,
          "max": 82.9,
          "night": 70.7,
          "eve": 75.42,
          "morn": 69.39
        },
        "feels_like": {"day": 84.15, "night": 70.25, "eve": 76.51, "morn": 70.25},
        "pressure": 1013,
        "humidity": 59,
        "dew_point": 64.6,
        "wind_speed": 2.28,
        "wind_deg": 6,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "clouds": 68,
        "pop": 1,
        "rain": 17.14,
        "uvi": 12.64
      },
      {
        "dt": 1618545600,
        "sunrise": 1618527067,
        "sunset": 1618570076,
        "temp": {
          "day": 80.82,
          "min": 69.78,
          "max": 83.91,
          "night": 71.04,
          "eve": 77.9,
          "morn": 69.78
        },
        "feels_like": {"day": 83.25, "night": 70.74, "eve": 78.78, "morn": 70.74},
        "pressure": 1014,
        "humidity": 63,
        "dew_point": 65.16,
        "wind_speed": 2.84,
        "wind_deg": 40,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "clouds": 45,
        "pop": 0.88,
        "rain": 2.87,
        "uvi": 13
      },
      {
        "dt": 1618632000,
        "sunrise": 1618613464,
        "sunset": 1618656451,
        "temp": {
          "day": 81.9,
          "min": 69.08,
          "max": 85.89,
          "night": 71.67,
          "eve": 77.83,
          "morn": 69.08
        },
        "feels_like": {"day": 83.59, "night": 69.96, "eve": 78.89, "morn": 69.96},
        "pressure": 1015,
        "humidity": 56,
        "dew_point": 62.92,
        "wind_speed": 3.33,
        "wind_deg": 32,
        "weather": [
          {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
        ],
        "clouds": 5,
        "pop": 0.94,
        "rain": 3.22,
        "uvi": 13
      },
      {
        "dt": 1618718400,
        "sunrise": 1618699861,
        "sunset": 1618742827,
        "temp": {
          "day": 81.37,
          "min": 69.44,
          "max": 82.49,
          "night": 70.25,
          "eve": 76.64,
          "morn": 69.44
        },
        "feels_like": {"day": 83.88, "night": 70.5, "eve": 77.67, "morn": 70.5},
        "pressure": 1015,
        "humidity": 62,
        "dew_point": 65.46,
        "wind_speed": 3.44,
        "wind_deg": 18,
        "weather": [
          {"id": 501, "main": "Rain", "description": "moderate rain", "icon": "10d"}
        ],
        "clouds": 88,
        "pop": 1,
        "rain": 9.29,
        "uvi": 13
      }
    ]
  };

  GetWeathersResponse.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    timezoneOffset = json['timezone_offset'];
    if (json['daily'] != null) {
      daily = [];
      json['daily'].forEach((v) {
        daily.add(new Daily.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      hourly = [];
      json['hourly'].forEach((v) {
        hourly.add(new Hourly.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone'] = this.timezone;
    data['timezone_offset'] = this.timezoneOffset;
    if (this.daily != null) {
      data['daily'] = this.daily.map((v) => v.toJson()).toList();
    }
    if (this.hourly != null) {
      data['hourly'] = this.hourly.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Daily {
  int dt;
  double sunrise;
  double sunset;
  Temp temp;
  FeelsLike feelsLike;
  double pressure;
  double humidity;
  double dewPoint;
  double windSpeed;
  double windDeg;
  List<Weather> weather;
  double clouds;
  double pop;
  double uvi;

  Daily(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.windSpeed,
      this.windDeg,
      this.weather,
      this.clouds,
      this.pop,
      this.uvi});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'].toDouble();
    sunset = json['sunset'].toDouble();
    temp = json['temp'] != null ? new Temp.fromJson(json['temp']) : null;
    feelsLike = json['feels_like'] != null ? new FeelsLike.fromJson(json['feels_like']) : null;
    pressure = json['pressure'].toDouble();
    humidity = json['humidity'].toDouble();
    dewPoint = json['dew_point'].toDouble();
    windSpeed = json['wind_speed'].toDouble();
    windDeg = json['wind_deg'].toDouble();
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
    clouds = json['clouds'].toDouble();
    pop = json['pop'].toDouble();
    uvi = json['uvi'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    if (this.temp != null) {
      data['temp'] = this.temp.toJson();
    }
    if (this.feelsLike != null) {
      data['feels_like'] = this.feelsLike.toJson();
    }
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    data['clouds'] = this.clouds;
    data['pop'] = this.pop;
    data['uvi'] = this.uvi;
    return data;
  }
}

class Hourly {
  int dt;
  double temp;
  double feelsLike;
  double pressure;
  double humidity;
  double dewPoint;
  double uvi;
  double clouds;
  double visibility;
  double windSpeed;
  double windDeg;
  double windGust;
  List<Weather> weather;
  double pop;
  Rain rain;
  Hourly({
    this.dt,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
    this.rain,
  });

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'].toDouble();
    feelsLike = json['feels_like'].toDouble();
    pressure = json['pressure'].toDouble();
    humidity = json['humidity'].toDouble();
    dewPoint = json['dew_point'].toDouble();
    uvi = json['uvi'].toDouble();
    clouds = json['clouds'].toDouble();
    visibility = json['visibility'].toDouble();
    windSpeed = json['wind_speed'].toDouble();
    windDeg = json['wind_deg'].toDouble();
    windGust = json['wind_gust'].toDouble();
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
    pop = json['pop'].toDouble();
    rain = json['rain'] != null ? new Rain.fromJson(json['rain']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['uvi'] = this.uvi;
    data['clouds'] = this.clouds;
    data['visibility'] = this.visibility;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    data['wind_gust'] = this.windGust;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    data['pop'] = this.pop;
    if (this.rain != null) {
      data['rain'] = this.rain.toJson();
    }
    return data;
  }
}

class Temp {
  double day;
  double min;
  double max;
  double night;
  double eve;
  double morn;

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'].toDouble();
    min = json['min'].toDouble();
    max = json['max'].toDouble();
    night = json['night'].toDouble();
    eve = json['eve'].toDouble();
    morn = json['morn'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['min'] = this.min;
    data['max'] = this.max;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}

class FeelsLike {
  double day;
  double night;
  double eve;
  double morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'].toDouble();
    night = json['night'].toDouble();
    eve = json['eve'].toDouble();
    morn = json['morn'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
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

class Rain {
  double d1h;

  Rain({this.d1h});

  Rain.fromJson(Map<String, dynamic> json) {
    d1h = json['1h'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1h'] = this.d1h;
    return data;
  }
}
