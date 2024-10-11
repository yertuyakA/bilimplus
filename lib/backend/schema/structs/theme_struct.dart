// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThemeStruct extends BaseStruct {
  ThemeStruct({
    int? id,
    String? name,
    int? level,
  })  : _id = id,
        _name = name,
        _level = level;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  set level(int? val) => _level = val;

  void incrementLevel(int amount) => level = level + amount;

  bool hasLevel() => _level != null;

  static ThemeStruct fromMap(Map<String, dynamic> data) => ThemeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        level: castToType<int>(data['level']),
      );

  static ThemeStruct? maybeFromMap(dynamic data) =>
      data is Map ? ThemeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'level': _level,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'level': serializeParam(
          _level,
          ParamType.int,
        ),
      }.withoutNulls;

  static ThemeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ThemeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        level: deserializeParam(
          data['level'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ThemeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ThemeStruct &&
        id == other.id &&
        name == other.name &&
        level == other.level;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, level]);
}

ThemeStruct createThemeStruct({
  int? id,
  String? name,
  int? level,
}) =>
    ThemeStruct(
      id: id,
      name: name,
      level: level,
    );
