import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otpcheck_widget.dart' show OtpcheckWidget;
import 'package:flutter/material.dart';

class OtpcheckModel extends FlutterFlowModel<OtpcheckWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (confirm OTP)] action in Button widget.
  ApiCallResponse? apiResult6ol;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
