import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstname_reg widget.
  FocusNode? firstnameRegFocusNode;
  TextEditingController? firstnameRegTextController;
  String? Function(BuildContext, String?)? firstnameRegTextControllerValidator;
  // State field(s) for lastname_reg widget.
  FocusNode? lastnameRegFocusNode;
  TextEditingController? lastnameRegTextController;
  String? Function(BuildContext, String?)? lastnameRegTextControllerValidator;
  // State field(s) for phone_reg widget.
  FocusNode? phoneRegFocusNode;
  TextEditingController? phoneRegTextController;
  final phoneRegMask = MaskTextInputFormatter(mask: '+998 (##) ### ####');
  String? Function(BuildContext, String?)? phoneRegTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    firstnameRegFocusNode?.dispose();
    firstnameRegTextController?.dispose();

    lastnameRegFocusNode?.dispose();
    lastnameRegTextController?.dispose();

    phoneRegFocusNode?.dispose();
    phoneRegTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
