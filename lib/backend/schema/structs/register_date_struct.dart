// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegisterDateStruct extends BaseStruct {
  RegisterDateStruct({
    String? password,
    String? fullname,
    String? phone,
  })  : _password = password,
        _fullname = fullname,
        _phone = phone;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  set fullname(String? val) => _fullname = val;

  bool hasFullname() => _fullname != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  static RegisterDateStruct fromMap(Map<String, dynamic> data) =>
      RegisterDateStruct(
        password: data['password'] as String?,
        fullname: data['fullname'] as String?,
        phone: data['phone'] as String?,
      );

  static RegisterDateStruct? maybeFromMap(dynamic data) => data is Map
      ? RegisterDateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'password': _password,
        'fullname': _fullname,
        'phone': _phone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'fullname': serializeParam(
          _fullname,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
      }.withoutNulls;

  static RegisterDateStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegisterDateStruct(
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        fullname: deserializeParam(
          data['fullname'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RegisterDateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegisterDateStruct &&
        password == other.password &&
        fullname == other.fullname &&
        phone == other.phone;
  }

  @override
  int get hashCode => const ListEquality().hash([password, fullname, phone]);
}

RegisterDateStruct createRegisterDateStruct({
  String? password,
  String? fullname,
  String? phone,
}) =>
    RegisterDateStruct(
      password: password,
      fullname: fullname,
      phone: phone,
    );
