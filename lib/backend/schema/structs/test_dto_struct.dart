// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestDtoStruct extends BaseStruct {
  TestDtoStruct({
    NextTaskStruct? nextTask,
    double? percent,
  })  : _nextTask = nextTask,
        _percent = percent;

  // "nextTask" field.
  NextTaskStruct? _nextTask;
  NextTaskStruct get nextTask => _nextTask ?? NextTaskStruct();
  set nextTask(NextTaskStruct? val) => _nextTask = val;

  void updateNextTask(Function(NextTaskStruct) updateFn) {
    updateFn(_nextTask ??= NextTaskStruct());
  }

  bool hasNextTask() => _nextTask != null;

  // "percent" field.
  double? _percent;
  double get percent => _percent ?? 0.0;
  set percent(double? val) => _percent = val;

  void incrementPercent(double amount) => percent = percent + amount;

  bool hasPercent() => _percent != null;

  static TestDtoStruct fromMap(Map<String, dynamic> data) => TestDtoStruct(
        nextTask: NextTaskStruct.maybeFromMap(data['nextTask']),
        percent: castToType<double>(data['percent']),
      );

  static TestDtoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestDtoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nextTask': _nextTask?.toMap(),
        'percent': _percent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nextTask': serializeParam(
          _nextTask,
          ParamType.DataStruct,
        ),
        'percent': serializeParam(
          _percent,
          ParamType.double,
        ),
      }.withoutNulls;

  static TestDtoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestDtoStruct(
        nextTask: deserializeStructParam(
          data['nextTask'],
          ParamType.DataStruct,
          false,
          structBuilder: NextTaskStruct.fromSerializableMap,
        ),
        percent: deserializeParam(
          data['percent'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TestDtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestDtoStruct &&
        nextTask == other.nextTask &&
        percent == other.percent;
  }

  @override
  int get hashCode => const ListEquality().hash([nextTask, percent]);
}

TestDtoStruct createTestDtoStruct({
  NextTaskStruct? nextTask,
  double? percent,
}) =>
    TestDtoStruct(
      nextTask: nextTask ?? NextTaskStruct(),
      percent: percent,
    );
