import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hava_durumu_app/models/weather_model.dart';

class WeatherService {
  Future<String> _getLocation() async {
    //Kullanıcının konumu açık mı değil mi kontrol ettik
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Future.error("Konum Servisiniz Kapalı");
    }

    //Kullanıcıdan konum izni aldık
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      //Konum izni verilmediyse tekrar konum izni istedik
      permission = await Geolocator.requestPermission();
      //Konum izni tekrar verilmediyse hata yolladık
      if (permission == LocationPermission.denied) {
        Future.error("Konum İzni Vermelisiniz");
      }
    }
    final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final List<Placemark> placemark = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    final String? city = placemark[0].administrativeArea;

    if (city == null) {
      Future.error("Bir Sorun Oluştu");
    }
    return city!;
  }

  Future<List<WeatherModel>> getWeatherData() async {
    final String city = await _getLocation();
    String url = 'https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=$city';
    const Map<String, dynamic> headers = {
      "authorization": "apikey 6PMV1KsLlGjJzipxvzJDiU:13VJks1o82NjtIuQxRsi9t",
      "content-type": "application/json"
    };

    final dio = Dio();

    final response = await dio.get(url, options: Options(headers: headers));

    if (response.statusCode != 200) {
      return Future.error("Bir Sorun Oluştu");
    }

    final List list = response.data["result"];
    final List<WeatherModel> weatherList = list.map((e) => WeatherModel.fromJson(e)).toList();

    return weatherList;
  }
}
