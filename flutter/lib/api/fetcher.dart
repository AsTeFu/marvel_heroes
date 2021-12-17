import 'package:dio/dio.dart';

class Fetcher {
  final String baseUrl;

  final Iterable<Interceptor>? interceptors;

  Fetcher({this.baseUrl = '', this.interceptors});

  Future get(
    String url, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    Dio dio = Dio();

    dio.options.baseUrl = baseUrl;

    if (interceptors != null) {
      dio.interceptors.addAll(interceptors!);
    }

    if (queryParameters != null) {
      dio.options.queryParameters.addAll(queryParameters);
    }

    Response response = await dio.get(url);

    return response.data;
  }
}
