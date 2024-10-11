import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_user_form_page_widget.dart' show NewUserFormPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewUserFormPageModel extends FlutterFlowModel<NewUserFormPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for birthDate widget.
  FocusNode? birthDateFocusNode;
  TextEditingController? birthDateTextController;
  final birthDateMask = MaskTextInputFormatter(mask: '####-##-##');
  String? Function(BuildContext, String?)? birthDateTextControllerValidator;
  // State field(s) for cityDropDown widget.
  String? cityDropDownValue;
  FormFieldController<String>? cityDropDownValueController;
  // State field(s) for region widget.
  FocusNode? regionFocusNode;
  TextEditingController? regionTextController;
  String? Function(BuildContext, String?)? regionTextControllerValidator;
  // State field(s) for schoolName widget.
  FocusNode? schoolNameFocusNode;
  TextEditingController? schoolNameTextController;
  String? Function(BuildContext, String?)? schoolNameTextControllerValidator;
  // State field(s) for languageDropDown widget.
  String? languageDropDownValue;
  FormFieldController<String>? languageDropDownValueController;
  // State field(s) for gradeDrop widget.
  String? gradeDropValue;
  FormFieldController<String>? gradeDropValueController;
  // Stores action output result for [Backend Call - API (Update User)] action in Button widget.
  ApiCallResponse? apiResultiggCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    birthDateFocusNode?.dispose();
    birthDateTextController?.dispose();

    regionFocusNode?.dispose();
    regionTextController?.dispose();

    schoolNameFocusNode?.dispose();
    schoolNameTextController?.dispose();
  }
}
