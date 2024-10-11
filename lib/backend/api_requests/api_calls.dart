import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SignInCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? lang = 'ru',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sign in',
      apiUrl: 'https://api.rocketback.uz/oquv-api/users/auth',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$lang',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmOTPCall {
  static Future<ApiCallResponse> call({
    String? fitrstName = '',
    String? phone = '',
    String? password = '',
    String? code = '',
    String? lastName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firstName": "$fitrstName",
  "lastName": "$lastName",
  "phone": "$phone",
  "password": "$password",
  "code": "$code"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirm OTP',
      apiUrl: 'https://api.rocketback.uz/oquv-api/users/otp/confirm',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyProfileCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? lang = 'ru',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get My profile',
      apiUrl: 'https://api.rocketback.uz/oquv-api/users/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? totalScore = 0,
    String? gradeId = '',
    int? streak = 0,
    String? schoolName = '\"\"',
    String? region = '\"\"',
    String? studyLanguage = '\"\"',
    String? city = '\"\"',
    String? birthDate = '',
    String? lang = 'ru',
  }) async {
    final ffApiRequestBody = '''
{
  "totalScore": $totalScore,
  "grade": {
    "id": $gradeId
  },
  "streak": $streak,
  "schoolName": "$schoolName",
  "region": "$region",
  "studyLanguage": "$studyLanguage",
  "city": "$city",
  "birthDate": "$birthDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User',
      apiUrl: 'https://api.rocketback.uz/oquv-api/users/update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChecksumUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? lang = 'ru',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'checksum user',
      apiUrl: 'https://api.rocketback.uz/oquv-api/users/checksum',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? hasUpdate(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.hasUpdate''',
      ));
  static bool? hasFilled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isFilled''',
      ));
}

class GetListOfThemesCall {
  static Future<ApiCallResponse> call({
    int? chapterId,
    String? token = '',
    String? lang = 'ru',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get list of themes',
      apiUrl: 'https://api.rocketback.uz/oquv-api/themes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {
        'chapterId': chapterId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListOfChaptersCall {
  static Future<ApiCallResponse> call({
    int? gradeId,
    String? token = '',
    String? lang = 'ru',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get list of chapters',
      apiUrl: 'https://api.rocketback.uz/oquv-api/themes/chapters',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {
        'gradeId': gradeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StartTestCall {
  static Future<ApiCallResponse> call({
    int? level,
    int? themeId,
    String? token = '',
    String? lang = 'ru',
  }) async {
    final ffApiRequestBody = '''
{
  "level": $level,
  "themeId": $themeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'start test',
      apiUrl: 'https://api.rocketback.uz/oquv-api/tasks/theme-test/start',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$lang',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? collectionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.collectionId''',
      ));
}

class NextTaskCall {
  static Future<ApiCallResponse> call({
    int? answerId,
    int? collectionTaskId,
    String? token = '',
    int? collectionId,
    String? lang = 'ru',
  }) async {
    final ffApiRequestBody = '''
{
  "answerId": $answerId,
  "collectionTaskId": $collectionTaskId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'next task',
      apiUrl:
          'https://api.rocketback.uz/oquv-api/tasks/theme-test/$collectionId/next',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FirstTaskCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? collectionId,
    String? lang = 'ru',
  }) async {
    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'first task',
      apiUrl:
          'https://api.rocketback.uz/oquv-api/tasks/theme-test/$collectionId/next',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMistakessCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? collectionId,
    String? lang = 'ru',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get mistakess',
      apiUrl: 'https://api.rocketback.uz/oquv-api/tasks/theme-mistakes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept-Language': '$lang',
      },
      params: {
        'collectionId': collectionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
