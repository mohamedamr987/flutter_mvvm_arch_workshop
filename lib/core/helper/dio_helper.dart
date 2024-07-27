import 'package:dio/dio.dart';

class DioHelper {
  static String url = 'https://ink-notes-app.onrender.com/api/v1';
  Dio dio = Dio(
    BaseOptions(
      baseUrl: url,
    ),
  );

  Future<Response> post(String path, Map<String, dynamic> data) async {
    try {
      return await dio.post(path, data: data);
    } on DioError catch (e) {
      return e.response!;
    }
  }

  Future<Response> get(String path) async {
    try {
      return await dio.get(path);
    } on DioError catch (e) {
      return e.response!;
    }
  }

  Future<Response> put(String path, Map<String, dynamic> data) async {
    try {
      return await dio.put(path, data: data);
    } on DioError catch (e) {
      return e.response!;
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await dio.delete(path);
    } on DioError catch (e) {
      return e.response!;
    }
  }
}
