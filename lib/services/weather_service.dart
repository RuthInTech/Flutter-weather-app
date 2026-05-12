import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {

  Future<Map<String, dynamic>> fetchWeather(String city) async {

    final url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=db6d3fb3f472893164bb04df8ba4e359&units=metric";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      return jsonDecode(response.body);

    } else {

      throw Exception("Failed to load weather");
    }
  }
}