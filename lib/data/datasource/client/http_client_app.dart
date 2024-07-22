import 'dart:convert';

import 'package:dio/dio.dart';

class HttpClientApp {
  final Dio _dio;

  HttpClientApp({required Dio dio}) : _dio = dio;

  Future<Response> post(String endpoint, Map<String, dynamic> data) async {
    return _dio.post(endpoint, data: jsonEncode(data));
  }

  Future<Response> get(String endpoint) async {
    return _dio.get(endpoint);
  }
}
