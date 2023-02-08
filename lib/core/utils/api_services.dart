import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final String _apiKey = "AIzaSyDKyFnCUcQAsYfDmrNLcIa6iNn8DAb_bdE";
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> getBooksList(
      {required String sorting, required String subject}) async {
    var response = await _dio.get(
        "${_baseUrl}volumes?filter=free-ebooks&sorting=$sorting&q=subject:$subject=$_apiKey");
    return response.data;
  }
}
