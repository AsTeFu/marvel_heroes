import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_heroes/api/heroes_api.dart';
import 'package:marvel_heroes/models/hero.dart';

class HeroState {
  List<Hero> heroes;
  bool loading;

  HeroState({required this.heroes, required this.loading});
}

class HeroesCubit extends Cubit<HeroState> {
  HeroesCubit() : super(HeroState(heroes: [], loading: true)) {
    readhero();
  }

  var heroIds = [
    1009268,
    1009368,
    1009220,
    1009282,
    1011010,
    1009664,
    1009351,
    1009189
  ];

  HeroesApi api = HeroesApi();

  void readhero() {
    api
        .getHeroes(heroIds)
        .then((heroes) => emit(HeroState(heroes: heroes, loading: false)));
  }
}
