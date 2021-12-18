// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heroes_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Heroe extends DataClass implements Insertable<Heroe> {
  final int id;
  final String name;
  final int color;
  final String thumbnail;
  final String description;
  Heroe(
      {required this.id,
      required this.name,
      required this.color,
      required this.thumbnail,
      required this.description});
  factory Heroe.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Heroe(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      color: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color'])!,
      thumbnail: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}thumbnail'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    map['thumbnail'] = Variable<String>(thumbnail);
    map['description'] = Variable<String>(description);
    return map;
  }

  HeroesCompanion toCompanion(bool nullToAbsent) {
    return HeroesCompanion(
      id: Value(id),
      name: Value(name),
      color: Value(color),
      thumbnail: Value(thumbnail),
      description: Value(description),
    );
  }

  factory Heroe.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Heroe(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
      'thumbnail': serializer.toJson<String>(thumbnail),
      'description': serializer.toJson<String>(description),
    };
  }

  Heroe copyWith(
          {int? id,
          String? name,
          int? color,
          String? thumbnail,
          String? description}) =>
      Heroe(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        thumbnail: thumbnail ?? this.thumbnail,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Heroe(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color, thumbnail, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Heroe &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.thumbnail == this.thumbnail &&
          other.description == this.description);
}

class HeroesCompanion extends UpdateCompanion<Heroe> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> color;
  final Value<String> thumbnail;
  final Value<String> description;
  const HeroesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.description = const Value.absent(),
  });
  HeroesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int color,
    required String thumbnail,
    required String description,
  })  : name = Value(name),
        color = Value(color),
        thumbnail = Value(thumbnail),
        description = Value(description);
  static Insertable<Heroe> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? color,
    Expression<String>? thumbnail,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (description != null) 'description': description,
    });
  }

  HeroesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? color,
      Value<String>? thumbnail,
      Value<String>? description}) {
    return HeroesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      thumbnail: thumbnail ?? this.thumbnail,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HeroesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $HeroesTable extends Heroes with TableInfo<$HeroesTable, Heroe> {
  final GeneratedDatabase _db;
  final String? _alias;
  $HeroesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int?> color = GeneratedColumn<int?>(
      'color', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _thumbnailMeta = const VerificationMeta('thumbnail');
  @override
  late final GeneratedColumn<String?> thumbnail = GeneratedColumn<String?>(
      'thumbnail', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, color, thumbnail, description];
  @override
  String get aliasedName => _alias ?? 'heroes';
  @override
  String get actualTableName => 'heroes';
  @override
  VerificationContext validateIntegrity(Insertable<Heroe> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Heroe map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Heroe.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HeroesTable createAlias(String alias) {
    return $HeroesTable(_db, alias);
  }
}

abstract class _$HeroesDatabase extends GeneratedDatabase {
  _$HeroesDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $HeroesTable heroes = $HeroesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [heroes];
}
