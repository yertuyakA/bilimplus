import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_page_widget.dart' show TestPageWidget;
import 'package:flutter/material.dart';

class TestPageModel extends FlutterFlowModel<TestPageWidget> {
  ///  Local state fields for this page.

  String selected = ' ';

  int? selectedAnswerId;

  int? correctAnswerId;

  bool isChecked = false;

  bool isCorrect = false;

  List<dynamic> nextAnswers = [];
  void addToNextAnswers(dynamic item) => nextAnswers.add(item);
  void removeFromNextAnswers(dynamic item) => nextAnswers.remove(item);
  void removeAtIndexFromNextAnswers(int index) => nextAnswers.removeAt(index);
  void insertAtIndexInNextAnswers(int index, dynamic item) =>
      nextAnswers.insert(index, item);
  void updateNextAnswersAtIndex(int index, Function(dynamic) updateFn) =>
      nextAnswers[index] = updateFn(nextAnswers[index]);

  String? nextTaskText;

  double? nextTastPercent;

  int? nextTaskCollectionId;

  bool isLastQuestion = false;

  int? resultPercent;

  int? resultScore;

  int? resultCorrectCount;

  int? resultWrongCount;

  String? themeName;

  String? taskImagePathLocal;

  String? showTypeLocal;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (next task)] action in Button widget.
  ApiCallResponse? apiResultye0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
