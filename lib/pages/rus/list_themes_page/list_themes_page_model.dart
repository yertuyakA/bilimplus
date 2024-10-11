import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'list_themes_page_widget.dart' show ListThemesPageWidget;
import 'package:flutter/material.dart';

class ListThemesPageModel extends FlutterFlowModel<ListThemesPageWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (start test)] action in Button widget.
  ApiCallResponse? apiResultf04;
  // Stores action output result for [Backend Call - API (first task)] action in Button widget.
  ApiCallResponse? apiResult2ur;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
