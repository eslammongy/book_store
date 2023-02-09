import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final String _apiKey = "";
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> getBooksList(
      {required String sorting, required String subject}) async {
    var response = await _dio
        .get("${_baseUrl}volumes?q=$subject&filter=free-ebooks&key=$_apiKey");

    return response.data;
  }
}
