import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'otpcheck_model.dart';
export 'otpcheck_model.dart';

class OtpcheckWidget extends StatefulWidget {
  const OtpcheckWidget({super.key});

  @override
  State<OtpcheckWidget> createState() => _OtpcheckWidgetState();
}

class _OtpcheckWidgetState extends State<OtpcheckWidget> {
  late OtpcheckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpcheckModel());

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
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.keyboard_backspace_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'vissn7n1' /* Подтверждение номера */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 20.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '7n88bn1k' /* Введите код, который был отпра... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF14181B),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: PinCodeTextField(
                  autoDisposeControllers: false,
                  appContext: context,
                  length: 4,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  enableActiveFill: true,
                  autoFocus: true,
                  enablePinAutofill: true,
                  errorTextSpace: 16.0,
                  showCursor: true,
                  cursorColor: const Color(0xFFF1F4F8),
                  obscureText: false,
                  hintCharacter: '-',
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    fieldHeight: 60.0,
                    fieldWidth: 60.0,
                    borderWidth: 2.0,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    shape: PinCodeFieldShape.box,
                    activeColor: const Color(0xFFF1F4F8),
                    inactiveColor: const Color(0xFFF2F2F2),
                    selectedColor: const Color(0xFFF1F4F8),
                  ),
                  controller: _model.pinCodeController,
                  onChanged: (_) {},
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator:
                      _model.pinCodeControllerValidator.asValidator(context),
                ),
              ),

              // You will have to add an action on this rich text to go to your login page.
              Opacity(
                opacity: 0.8,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('confirmationCodePage');
                    },
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'cq8q9ktm' /* Не получили код?  */,
                            ),
                            style: const TextStyle(
                              color: Color(0xFF14181B),
                            ),
                          ),
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'dw7ec0wh' /* Отправить снова */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF14181B),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 16.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResult6ol = await ConfirmOTPCall.call(
                      fitrstName: FFAppState().firstName,
                      password: FFAppState().password,
                      phone: FFAppState().phone,
                      code: _model.pinCodeController!.text,
                      lastName: FFAppState().lastName,
                    );

                    if ((_model.apiResult6ol?.succeeded ?? true)) {
                      context.pushNamed('congratspage');
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Упс...'),
                            content: const Text(
                                'Что-то пошло не так,  попробуйте еще раз'),
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
                    '2ee1xmzm' /* Продолжить */,
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
