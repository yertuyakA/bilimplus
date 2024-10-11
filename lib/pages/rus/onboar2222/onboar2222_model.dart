import '/flutter_flow/flutter_flow_util.dart';
import 'onboar2222_widget.dart' show Onboar2222Widget;
import 'package:flutter/material.dart';

class Onboar2222Model extends FlutterFlowModel<Onboar2222Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
