import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart' as material;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

import 'package:marvel_heroes/models/hero.dart';

part 'heroes_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

class Heroes extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  IntColumn get color => integer()();
  TextColumn get thumbnail => text()();
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Heroes])
class HeroesDatabase extends _$HeroesDatabase {
  HeroesDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Hero>> get allHeroes async {
    var response = await select(heroes).get();

    return response
        .map(
          (e) => Hero(
              id: e.id,
              name: e.name,
              description: e.description,
              thumbnail: e.thumbnail,
              color: material.Color(e.color)),
        )
        .toList();
  }

  void addHeroes(List<Hero> newHeroes) {
    for (var hero in newHeroes) {
      into(heroes).insert(
          Heroe(
              id: hero.id,
              name: hero.name,
              description: hero.description,
              thumbnail: hero.thumbnail,
              color: hero.color.value),
          mode: InsertMode.insertOrReplace);
    }
  }
}
