import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Response> get({
    required String endpoint,
  }) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
