import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'change_lang_app_model.dart';
export 'change_lang_app_model.dart';

class ChangeLangAppWidget extends StatefulWidget {
  const ChangeLangAppWidget({super.key});

  @override
  State<ChangeLangAppWidget> createState() => _ChangeLangAppWidgetState();
}

class _ChangeLangAppWidgetState extends State<ChangeLangAppWidget> {
  late ChangeLangAppModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeLangAppModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 350.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Opacity(
                opacity: 0.2,
                child: Divider(
                  thickness: 3.0,
                  indent: 150.0,
                  endIndent: 150.0,
                  color: Color(0xFF14181B),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'wso6dkft' /* Выберите язык -  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF14181B),
                              letterSpacing: 0.0,
                            ),
                      ),
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'zfp5fmu7' /* Tilni tanlang */,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF4B39EF),
                          fontSize: 14.0,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: FlutterFlowLanguageSelector(
                  width: 200.0,
                  backgroundColor: Colors.white,
                  borderColor: const Color(0xFF8B8C8D),
                  dropdownIconColor: const Color(0xFF14181B),
                  borderRadius: 8.0,
                  textStyle: const TextStyle(
                    color: Color(0xFF14181B),
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                  ),
                  hideFlags: true,
                  flagSize: 24.0,
                  flagTextGap: 8.0,
                  currentLanguage: FFLocalizations.of(context).languageCode,
                  languages: FFLocalizations.languages(),
                  onChanged: (lang) => setAppLanguage(context, lang),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
