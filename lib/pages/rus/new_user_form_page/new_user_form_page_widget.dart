import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_user_form_page_model.dart';
export 'new_user_form_page_model.dart';

class NewUserFormPageWidget extends StatefulWidget {
  const NewUserFormPageWidget({super.key});

  @override
  State<NewUserFormPageWidget> createState() => _NewUserFormPageWidgetState();
}

class _NewUserFormPageWidgetState extends State<NewUserFormPageWidget> {
  late NewUserFormPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewUserFormPageModel());

    _model.birthDateTextController ??= TextEditingController();
    _model.birthDateFocusNode ??= FocusNode();

    _model.regionTextController ??= TextEditingController();
    _model.regionFocusNode ??= FocusNode();

    _model.schoolNameTextController ??= TextEditingController();
    _model.schoolNameFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                alignment: const AlignmentDirectional(-1.0, 0.0),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'bhz8ptly' /* Анкета */,
                ),
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF14181B),
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'i4m3n9qg' /* Дата рождения */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.birthDateTextController,
                    focusNode: _model.birthDateFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'y7cp6pat' /* Год рождения-Месяц-День */,
                      ),
                      alignLabelWithHint: false,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF4B39EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF1F4F8),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                    keyboardType: TextInputType.datetime,
                    cursorColor: Colors.black,
                    validator: _model.birthDateTextControllerValidator
                        .asValidator(context),
                    inputFormatters: [_model.birthDateMask],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'lib2wy0e' /* Город */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.cityDropDownValueController ??=
                      FormFieldController<String>(
                    _model.cityDropDownValue ??=
                        FFLocalizations.of(context).getText(
                      'xwqm775t' /* Ташкент */,
                    ),
                  ),
                  options: [
                    FFLocalizations.of(context).getText(
                      '7sqm67zn' /* Ташкент */,
                    ),
                    FFLocalizations.of(context).getText(
                      'elw92pyj' /* Самарканд */,
                    ),
                    FFLocalizations.of(context).getText(
                      'zfe8n9fr' /* Бухара */,
                    ),
                    FFLocalizations.of(context).getText(
                      'lkj2hc27' /* Хива */,
                    ),
                    FFLocalizations.of(context).getText(
                      'c6vv6969' /* Нукус */,
                    ),
                    FFLocalizations.of(context).getText(
                      '9duz9oib' /* Андижан */,
                    ),
                    FFLocalizations.of(context).getText(
                      '1eaywt9f' /* Коканд */,
                    ),
                    FFLocalizations.of(context).getText(
                      'uzbjp82d' /* Фергана */,
                    ),
                    FFLocalizations.of(context).getText(
                      'gej26al3' /* Чирчик */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.cityDropDownValue = val),
                  width: double.infinity,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'jl8ym85z' /* Выберите язык обучения */,
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF57636C),
                    size: 24.0,
                  ),
                  fillColor: const Color(0xFFF1F4F8),
                  elevation: 2.0,
                  borderColor: Colors.transparent,
                  borderWidth: 2.0,
                  borderRadius: 12.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'z3dtttw2' /* Район */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.regionTextController,
                    focusNode: _model.regionFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'yk7umxsv' /* Район */,
                      ),
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Open Sans',
                                color: const Color(0xFF14181B),
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF1F4F8),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                    validator: _model.regionTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'zed9iv5i' /* Школа */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.schoolNameTextController,
                    focusNode: _model.schoolNameFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'y59ar2ad' /* Название школы */,
                      ),
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Open Sans',
                                color: const Color(0xFF14181B),
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF1F4F8),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                    validator: _model.schoolNameTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'b02h8df4' /* Язык обучения */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.languageDropDownValueController ??=
                      FormFieldController<String>(null),
                  options: [
                    FFLocalizations.of(context).getText(
                      'jna9g9fu' /* Русский */,
                    ),
                    FFLocalizations.of(context).getText(
                      'xc9ijp26' /* Узбекский */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.languageDropDownValue = val),
                  width: double.infinity,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    '7jez7m1v' /* Выберите язык обучения */,
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF57636C),
                    size: 24.0,
                  ),
                  fillColor: const Color(0xFFF1F4F8),
                  elevation: 2.0,
                  borderColor: Colors.transparent,
                  borderWidth: 2.0,
                  borderRadius: 12.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'e37fn6so' /* Класс обучения */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.gradeDropValueController ??=
                      FormFieldController<String>(null),
                  options: [
                    FFLocalizations.of(context).getText(
                      'kovawo2l' /* 2 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'kvku5ebw' /* 3 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'iwsui3gp' /* 4 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'zmfiq07t' /* 5 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'c1tgnyw6' /* 6 */,
                    ),
                    FFLocalizations.of(context).getText(
                      '66d1guh2' /* 7 */,
                    ),
                    FFLocalizations.of(context).getText(
                      '1oz5b6zf' /* 8 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'c0tkaq8a' /* 9 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'ipg95la0' /* 10 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'm8mgxh9g' /* 11 */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.gradeDropValue = val),
                  width: double.infinity,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'k0qksdwt' /* Выберите класс */,
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF57636C),
                    size: 24.0,
                  ),
                  fillColor: const Color(0xFFF1F4F8),
                  elevation: 2.0,
                  borderColor: Colors.transparent,
                  borderWidth: 2.0,
                  borderRadius: 12.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResultiggCopy = await UpdateUserCall.call(
                      token: FFAppState().token,
                      gradeId: _model.gradeDropValue,
                      schoolName: _model.schoolNameTextController.text,
                      studyLanguage: _model.languageDropDownValue,
                      region: _model.regionTextController.text,
                      city: _model.cityDropDownValue,
                      birthDate: _model.birthDateTextController.text,
                    );

                    if ((_model.apiResultiggCopy?.succeeded ?? true)) {
                      context.pushNamed('dashboard');
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Упс'),
                            content:
                                const Text('Что-то пошло не так, попробуйте еще раз'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    }

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'qvtv39kz' /* Подтвердить */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
