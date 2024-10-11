import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'explanation_page_copy_model.dart';
export 'explanation_page_copy_model.dart';

class ExplanationPageCopyWidget extends StatefulWidget {
  const ExplanationPageCopyWidget({super.key});

  @override
  State<ExplanationPageCopyWidget> createState() =>
      _ExplanationPageCopyWidgetState();
}

class _ExplanationPageCopyWidgetState extends State<ExplanationPageCopyWidget> {
  late ExplanationPageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplanationPageCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'vm29lpdj' /* Kvadratli tenglama echimlarini... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/__2024-02-24__15.44.27.png',
                  width: 300.0,
                  height: 87.0,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      's6w70ane' /*  formulani qo'llaymiz, bu yerd... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/__2024-02-24__15.46.13.png',
                  width: 300.0,
                  height: 71.0,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'nn8iib5a' /* Ma'lumotlarni qo'shamiz: */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/__2024-02-24__15.47.02.png',
                  width: 350.0,
                  height: 261.0,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'wju3qv0v' /* Tenglamaning yechimlari: x=14. */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 16.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('otpcheck');

                    unawaited(
                      () async {
                        await launchURL('https://t.me/bilimplus_bot');
                      }(),
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'epwvt1ez' /* Otish */,
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
