import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final String _apiKey = "AIzaSyBxr03lwzZK31H_YqvGtGvTHFkaexrhODA";
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> getBooksList({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
