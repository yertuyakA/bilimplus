// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NextTaskStruct extends BaseStruct {
  NextTaskStruct({
    int? taskId,
    int? collectionTaskId,
    String? taskName,
    List<AnswersStruct>? answers,
  })  : _taskId = taskId,
        _collectionTaskId = collectionTaskId,
        _taskName = taskName,
        _answers = answers;

  // "taskId" field.
  int? _taskId;
  int get taskId => _taskId ?? 0;
  set taskId(int? val) => _taskId = val;

  void incrementTaskId(int amount) => taskId = taskId + amount;

  bool hasTaskId() => _taskId != null;

  // "collectionTaskId" field.
  int? _collectionTaskId;
  int get collectionTaskId => _collectionTaskId ?? 0;
  set collectionTaskId(int? val) => _collectionTaskId = val;

  void incrementCollectionTaskId(int amount) =>
      collectionTaskId = collectionTaskId + amount;

  bool hasCollectionTaskId() => _collectionTaskId != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  set taskName(String? val) => _taskName = val;

  bool hasTaskName() => _taskName != null;

  // "answers" field.
  List<AnswersStruct>? _answers;
  List<AnswersStruct> get answers => _answers ?? const [];
  set answers(List<AnswersStruct>? val) => _answers = val;

  void updateAnswers(Function(List<AnswersStruct>) updateFn) {
    updateFn(_answers ??= []);
  }

  bool hasAnswers() => _answers != null;

  static NextTaskStruct fromMap(Map<String, dynamic> data) => NextTaskStruct(
        taskId: castToType<int>(data['taskId']),
        collectionTaskId: castToType<int>(data['collectionTaskId']),
        taskName: data['taskName'] as String?,
        answers: getStructList(
          data['answers'],
          AnswersStruct.fromMap,
        ),
      );

  static NextTaskStruct? maybeFromMap(dynamic data) =>
      data is Map ? NextTaskStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'taskId': _taskId,
        'collectionTaskId': _collectionTaskId,
        'taskName': _taskName,
        'answers': _answers?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'taskId': serializeParam(
          _taskId,
          ParamType.int,
        ),
        'collectionTaskId': serializeParam(
          _collectionTaskId,
          ParamType.int,
        ),
        'taskName': serializeParam(
          _taskName,
          ParamType.String,
        ),
        'answers': serializeParam(
          _answers,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NextTaskStruct fromSerializableMap(Map<String, dynamic> data) =>
      NextTaskStruct(
        taskId: deserializeParam(
          data['taskId'],
          ParamType.int,
          false,
        ),
        collectionTaskId: deserializeParam(
          data['collectionTaskId'],
          ParamType.int,
          false,
        ),
        taskName: deserializeParam(
          data['taskName'],
          ParamType.String,
          false,
        ),
        answers: deserializeStructParam<AnswersStruct>(
          data['answers'],
          ParamType.DataStruct,
          true,
          structBuilder: AnswersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NextTaskStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NextTaskStruct &&
        taskId == other.taskId &&
        collectionTaskId == other.collectionTaskId &&
        taskName == other.taskName &&
        listEquality.equals(answers, other.answers);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([taskId, collectionTaskId, taskName, answers]);
}

NextTaskStruct createNextTaskStruct({
  int? taskId,
  int? collectionTaskId,
  String? taskName,
}) =>
    NextTaskStruct(
      taskId: taskId,
      collectionTaskId: collectionTaskId,
      taskName: taskName,
    );
