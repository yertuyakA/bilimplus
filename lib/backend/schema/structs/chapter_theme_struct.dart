// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChapterThemeStruct extends BaseStruct {
  ChapterThemeStruct({
    int? id,
    String? chapterName,
    List<ThemeStruct>? themes,
  })  : _id = id,
        _chapterName = chapterName,
        _themes = themes;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "chapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  set chapterName(String? val) => _chapterName = val;

  bool hasChapterName() => _chapterName != null;

  // "themes" field.
  List<ThemeStruct>? _themes;
  List<ThemeStruct> get themes => _themes ?? const [];
  set themes(List<ThemeStruct>? val) => _themes = val;

  void updateThemes(Function(List<ThemeStruct>) updateFn) {
    updateFn(_themes ??= []);
  }

  bool hasThemes() => _themes != null;

  static ChapterThemeStruct fromMap(Map<String, dynamic> data) =>
      ChapterThemeStruct(
        id: castToType<int>(data['id']),
        chapterName: data['chapterName'] as String?,
        themes: getStructList(
          data['themes'],
          ThemeStruct.fromMap,
        ),
      );

  static ChapterThemeStruct? maybeFromMap(dynamic data) => data is Map
      ? ChapterThemeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'chapterName': _chapterName,
        'themes': _themes?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'chapterName': serializeParam(
          _chapterName,
          ParamType.String,
        ),
        'themes': serializeParam(
          _themes,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ChapterThemeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChapterThemeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        chapterName: deserializeParam(
          data['chapterName'],
          ParamType.String,
          false,
        ),
        themes: deserializeStructParam<ThemeStruct>(
          data['themes'],
          ParamType.DataStruct,
          true,
          structBuilder: ThemeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ChapterThemeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChapterThemeStruct &&
        id == other.id &&
        chapterName == other.chapterName &&
        listEquality.equals(themes, other.themes);
  }

  @override
  int get hashCode => const ListEquality().hash([id, chapterName, themes]);
}

ChapterThemeStruct createChapterThemeStruct({
  int? id,
  String? chapterName,
}) =>
    ChapterThemeStruct(
      id: id,
      chapterName: chapterName,
    );
