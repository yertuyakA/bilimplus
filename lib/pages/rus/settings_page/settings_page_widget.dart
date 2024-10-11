import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'settings_page_model.dart';
export 'settings_page_model.dart';

class SettingsPageWidget extends StatefulWidget {
  const SettingsPageWidget({super.key});

  @override
  State<SettingsPageWidget> createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  late SettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsPageModel());

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
        backgroundColor: const Color(0xFFF1F4F8),
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
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 6.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'ouoypjnw' /* Соц. сети */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF15161E),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 12.0,
                      borderWidth: 1.0,
                      buttonSize: 48.0,
                      fillColor: Colors.white,
                      icon: const Icon(
                        Icons.telegram,
                        color: Color(0xFF606A85),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await launchURL('https://t.me/turanstudy');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0xFFE5E7EB),
                      borderRadius: 12.0,
                      borderWidth: 1.0,
                      buttonSize: 48.0,
                      fillColor: Colors.white,
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Color(0xFF606A85),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://www.instagram.com/bilimplus.uz/');
                      },
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 55.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'eadbbw3d' /* Язык обучения */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF14181B),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: 150.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlutterFlowLanguageSelector(
                                width: 150.0,
                                height: 40.0,
                                backgroundColor: Colors.white,
                                borderColor: const Color(0xFFE5E7EB),
                                dropdownIconColor: const Color(0xFF14181B),
                                textStyle: const TextStyle(
                                  color: Color(0xFF14181B),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                                hideFlags: true,
                                flagSize: 24.0,
                                flagTextGap: 8.0,
                                currentLanguage:
                                    FFLocalizations.of(context).languageCode,
                                languages: FFLocalizations.languages(),
                                onChanged: (lang) =>
                                    setAppLanguage(context, lang),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qo5c7ywv' /* App Versions */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF15161E),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'e6v6fyrz' /* v0.0.2 */,
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF606A85),
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: FFLocalizations.of(context).getText(
                            'xslkt4lv' /* Made by  */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF606A85),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        TextSpan(
                          text: FFLocalizations.of(context).getText(
                            'ie5kx80s' /* Rocket Digital Studio 🚀 */,
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('onboar2222', context.mounted);
                    },
                    text: FFLocalizations.of(context).getText(
                      '9m05idb7' /* Выйти из аккаунта */,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFF606A85),
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E7EB),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
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
