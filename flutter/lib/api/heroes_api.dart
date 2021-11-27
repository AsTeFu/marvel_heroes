import 'package:flutter/material.dart';
import 'package:marvel_heroes/api/api_url.dart';
import 'package:marvel_heroes/api/fetcher.dart';
import 'package:marvel_heroes/models/hero_colors.dart';

import '../models/hero.dart' as models;

class HeroesApi {
  final MarvelApiUrls urls = MarvelApiUrls();
  late Fetcher fetcher;
  final HeroColors colors = HeroColors();

  HeroesApi() {
    fetcher = Fetcher(baseUrl: urls.baseUrl + urls.apiVersion);
  }

  Future<models.Hero> getHero(int heroId) async {
    dynamic response = await fetcher.get(urls.heroesUrl + '/$heroId');
    var heroResponse = response['results'][0];

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
      return await Future.wait(heroIds.map((id) => getHero(id)));
    } catch (err) {
      return Future(() => List.empty());
    }
  }
}
