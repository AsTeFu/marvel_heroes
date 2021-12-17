import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marvel_heroes/api/api_url.dart';
import 'package:marvel_heroes/api/fetcher.dart';
import 'package:marvel_heroes/localstore/heroes_database.dart';
import 'package:marvel_heroes/models/hero_colors.dart';

import '../models/hero.dart' as models;

class HeroesApi {
  final String publicKey = '2a82e215ebfa041fd231ed0e1af03edb';
  final String privateKey = '80ec4e6d5f0b8eaa0d7ddc6489dd7d1628269693';

  late Fetcher fetcher;
  final MarvelApiUrls urls = MarvelApiUrls();
  final HeroColors colors = HeroColors();

  final HeroesDatabase database = HeroesDatabase();

  HeroesApi() {
    Interceptor interceptor = InterceptorsWrapper(
      onRequest: (options, handler) {
        int ts = DateTime.now().millisecondsSinceEpoch;
        String hash = _generateMd5('$ts$privateKey$publicKey');

        options.queryParameters['apikey'] = publicKey;
        options.queryParameters['ts'] = ts;
        options.queryParameters['hash'] = hash;

        return handler.next(options);
      },
    );

    fetcher = Fetcher(
        baseUrl: urls.baseUrl + urls.apiVersion, interceptors: {interceptor});
  }

  String _generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  Future<models.Hero> getHero(int heroId) async {
    dynamic response = await fetcher.get(urls.heroesUrl + '/$heroId');
    var heroResponse = response['data']['results'][0];

    models.Hero hero = models.Hero(
      id: heroResponse['id'],
      name: heroResponse['name'],
      description: heroResponse['description'],
      thumbnail: heroResponse['thumbnail']['path'] + '/portrait_incredible.jpg',
      color: colors.heroColors[heroResponse['name']] ?? Colors.pink,
    );

    return Future(() => hero);
  }

  Future<List<models.Hero>> getHeroes(List<int> heroIds) async {
    try {
      var heroes = await Future.wait(heroIds.map((id) => getHero(id)));
      database.addHeroes(heroes);
      return heroes;
    } catch (err) {
      return database.allHeroes;
    }
  }
}
