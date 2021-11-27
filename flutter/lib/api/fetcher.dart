import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class Fetcher {
  final String baseUrl;
  final String publicKey = '2a82e215ebfa041fd231ed0e1af03edb';
  final String privateKey = '80ec4e6d5f0b8eaa0d7ddc6489dd7d1628269693';

  Fetcher({this.baseUrl = ''});

  String _generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  Future get(String url, [Map<String, dynamic>? queryParameters]) async {
    Dio dio = Dio();

    int ts = DateTime.now().millisecondsSinceEpoch;
    String hash = _generateMd5('$ts$privateKey$publicKey');

    dio.options.baseUrl = baseUrl;
    dio.options.queryParameters['apikey'] = publicKey;
    dio.options.queryParameters['ts'] = ts;
    dio.options.queryParameters['hash'] = hash;

    if (queryParameters != null) {
      dio.options.queryParameters.addAll(queryParameters);
    }

    Response response = await dio.get(url);

    return response.data['data'];
  }
}
