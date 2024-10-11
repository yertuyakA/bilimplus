// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LevelStruct extends BaseStruct {
  LevelStruct({
    int? id,
    int? currentValue,
    int? thresholdValue,
    String? name,
    double? percent,
  })  : _id = id,
        _currentValue = currentValue,
        _thresholdValue = thresholdValue,
        _name = name,
        _percent = percent;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "currentValue" field.
  int? _currentValue;
  int get currentValue => _currentValue ?? 0;
  set currentValue(int? val) => _currentValue = val;

  void incrementCurrentValue(int amount) =>
      currentValue = currentValue + amount;

  bool hasCurrentValue() => _currentValue != null;

  // "thresholdValue" field.
  int? _thresholdValue;
  int get thresholdValue => _thresholdValue ?? 0;
  set thresholdValue(int? val) => _thresholdValue = val;

  void incrementThresholdValue(int amount) =>
      thresholdValue = thresholdValue + amount;

  bool hasThresholdValue() => _thresholdValue != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "percent" field.
  double? _percent;
  double get percent => _percent ?? 0.0;
  set percent(double? val) => _percent = val;

  void incrementPercent(double amount) => percent = percent + amount;

  bool hasPercent() => _percent != null;

  static LevelStruct fromMap(Map<String, dynamic> data) => LevelStruct(
        id: castToType<int>(data['id']),
        currentValue: castToType<int>(data['currentValue']),
        thresholdValue: castToType<int>(data['thresholdValue']),
        name: data['name'] as String?,
        percent: castToType<double>(data['percent']),
      );

  static LevelStruct? maybeFromMap(dynamic data) =>
      data is Map ? LevelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'currentValue': _currentValue,
        'thresholdValue': _thresholdValue,
        'name': _name,
        'percent': _percent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'currentValue': serializeParam(
          _currentValue,
          ParamType.int,
        ),
        'thresholdValue': serializeParam(
          _thresholdValue,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'percent': serializeParam(
          _percent,
          ParamType.double,
        ),
      }.withoutNulls;

  static LevelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LevelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        currentValue: deserializeParam(
          data['currentValue'],
          ParamType.int,
          false,
        ),
        thresholdValue: deserializeParam(
          data['thresholdValue'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        percent: deserializeParam(
          data['percent'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'LevelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LevelStruct &&
        id == other.id &&
        currentValue == other.currentValue &&
        thresholdValue == other.thresholdValue &&
        name == other.name &&
        percent == other.percent;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, currentValue, thresholdValue, name, percent]);
}

LevelStruct createLevelStruct({
  int? id,
  int? currentValue,
  int? thresholdValue,
  String? name,
  double? percent,
}) =>
    LevelStruct(
      id: id,
      currentValue: currentValue,
      thresholdValue: thresholdValue,
      name: name,
      percent: percent,
    );
