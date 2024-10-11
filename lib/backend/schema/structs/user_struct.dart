// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    String? token,
    String? firstName,
    String? lastName,
    int? totalScore,
    String? phone,
    DateTime? birthDate,
    String? city,
    int? id,
    double? levelPercent,
    String? levelName,
    int? levelThreshold,
    String? gradeName,
    double? cashback,
    int? gradeId,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _token = token,
        _firstName = firstName,
        _lastName = lastName,
        _totalScore = totalScore,
        _phone = phone,
        _birthDate = birthDate,
        _city = city,
        _id = id,
        _levelPercent = levelPercent,
        _levelName = levelName,
        _levelThreshold = levelThreshold,
        _gradeName = gradeName,
        _cashback = cashback,
        _gradeId = gradeId;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "totalScore" field.
  int? _totalScore;
  int get totalScore => _totalScore ?? 0;
  set totalScore(int? val) => _totalScore = val;

  void incrementTotalScore(int amount) => totalScore = totalScore + amount;

  bool hasTotalScore() => _totalScore != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "birthDate" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  set birthDate(DateTime? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "levelPercent" field.
  double? _levelPercent;
  double get levelPercent => _levelPercent ?? 0.0;
  set levelPercent(double? val) => _levelPercent = val;

  void incrementLevelPercent(double amount) =>
      levelPercent = levelPercent + amount;

  bool hasLevelPercent() => _levelPercent != null;

  // "LevelName" field.
  String? _levelName;
  String get levelName => _levelName ?? '';
  set levelName(String? val) => _levelName = val;

  bool hasLevelName() => _levelName != null;

  // "levelThreshold" field.
  int? _levelThreshold;
  int get levelThreshold => _levelThreshold ?? 0;
  set levelThreshold(int? val) => _levelThreshold = val;

  void incrementLevelThreshold(int amount) =>
      levelThreshold = levelThreshold + amount;

  bool hasLevelThreshold() => _levelThreshold != null;

  // "gradeName" field.
  String? _gradeName;
  String get gradeName => _gradeName ?? '';
  set gradeName(String? val) => _gradeName = val;

  bool hasGradeName() => _gradeName != null;

  // "cashback" field.
  double? _cashback;
  double get cashback => _cashback ?? 0.0;
  set cashback(double? val) => _cashback = val;

  void incrementCashback(double amount) => cashback = cashback + amount;

  bool hasCashback() => _cashback != null;

  // "gradeId" field.
  int? _gradeId;
  int get gradeId => _gradeId ?? 0;
  set gradeId(int? val) => _gradeId = val;

  void incrementGradeId(int amount) => gradeId = gradeId + amount;

  bool hasGradeId() => _gradeId != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        token: data['token'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        totalScore: castToType<int>(data['totalScore']),
        phone: data['phone'] as String?,
        birthDate: data['birthDate'] as DateTime?,
        city: data['city'] as String?,
        id: castToType<int>(data['id']),
        levelPercent: castToType<double>(data['levelPercent']),
        levelName: data['LevelName'] as String?,
        levelThreshold: castToType<int>(data['levelThreshold']),
        gradeName: data['gradeName'] as String?,
        cashback: castToType<double>(data['cashback']),
        gradeId: castToType<int>(data['gradeId']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'token': _token,
        'firstName': _firstName,
        'lastName': _lastName,
        'totalScore': _totalScore,
        'phone': _phone,
        'birthDate': _birthDate,
        'city': _city,
        'id': _id,
        'levelPercent': _levelPercent,
        'LevelName': _levelName,
        'levelThreshold': _levelThreshold,
        'gradeName': _gradeName,
        'cashback': _cashback,
        'gradeId': _gradeId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'totalScore': serializeParam(
          _totalScore,
          ParamType.int,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'birthDate': serializeParam(
          _birthDate,
          ParamType.DateTime,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'levelPercent': serializeParam(
          _levelPercent,
          ParamType.double,
        ),
        'LevelName': serializeParam(
          _levelName,
          ParamType.String,
        ),
        'levelThreshold': serializeParam(
          _levelThreshold,
          ParamType.int,
        ),
        'gradeName': serializeParam(
          _gradeName,
          ParamType.String,
        ),
        'cashback': serializeParam(
          _cashback,
          ParamType.double,
        ),
        'gradeId': serializeParam(
          _gradeId,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        totalScore: deserializeParam(
          data['totalScore'],
          ParamType.int,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birthDate'],
          ParamType.DateTime,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        levelPercent: deserializeParam(
          data['levelPercent'],
          ParamType.double,
          false,
        ),
        levelName: deserializeParam(
          data['LevelName'],
          ParamType.String,
          false,
        ),
        levelThreshold: deserializeParam(
          data['levelThreshold'],
          ParamType.int,
          false,
        ),
        gradeName: deserializeParam(
          data['gradeName'],
          ParamType.String,
          false,
        ),
        cashback: deserializeParam(
          data['cashback'],
          ParamType.double,
          false,
        ),
        gradeId: deserializeParam(
          data['gradeId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        token == other.token &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        totalScore == other.totalScore &&
        phone == other.phone &&
        birthDate == other.birthDate &&
        city == other.city &&
        id == other.id &&
        levelPercent == other.levelPercent &&
        levelName == other.levelName &&
        levelThreshold == other.levelThreshold &&
        gradeName == other.gradeName &&
        cashback == other.cashback &&
        gradeId == other.gradeId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uid,
        displayName,
        createTime,
        token,
        firstName,
        lastName,
        totalScore,
        phone,
        birthDate,
        city,
        id,
        levelPercent,
        levelName,
        levelThreshold,
        gradeName,
        cashback,
        gradeId
      ]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  String? token,
  String? firstName,
  String? lastName,
  int? totalScore,
  String? phone,
  DateTime? birthDate,
  String? city,
  int? id,
  double? levelPercent,
  String? levelName,
  int? levelThreshold,
  String? gradeName,
  double? cashback,
  int? gradeId,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      token: token,
      firstName: firstName,
      lastName: lastName,
      totalScore: totalScore,
      phone: phone,
      birthDate: birthDate,
      city: city,
      id: id,
      levelPercent: levelPercent,
      levelName: levelName,
      levelThreshold: levelThreshold,
      gradeName: gradeName,
      cashback: cashback,
      gradeId: gradeId,
    );
