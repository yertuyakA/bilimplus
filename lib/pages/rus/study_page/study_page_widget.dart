import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'study_page_model.dart';
export 'study_page_model.dart';

class StudyPageWidget extends StatefulWidget {
  const StudyPageWidget({super.key});

  @override
  State<StudyPageWidget> createState() => _StudyPageWidgetState();
}

class _StudyPageWidgetState extends State<StudyPageWidget>
    with TickerProviderStateMixin {
  late StudyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudyPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'p92clebd' /* Обучение */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF14181B),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor: const Color(0xFF14181B),
                          unselectedLabelColor: const Color(0xFF57636C),
                          backgroundColor: Colors.white,
                          unselectedBackgroundColor: const Color(0xFFE0E3E7),
                          borderColor: const Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 12.0,
                          elevation: 0.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'mn44uxz2' /* Мой класс */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'vcf74y7d' /* Статистика */,
                              ),
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Container(
                              width: 100.0,
                              height: 531.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: const BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController1 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue1 ??=
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '1baij57n' /* 4-й класс */,
                                                ),
                                              ),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'nk3ydc5y' /* 4-й класс */,
                                                )
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.dropDownValue1 =
                                                      val),
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4,
                                              height: 40.0,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF14181B),
                                                    letterSpacing: 0.0,
                                                  ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '745eg717' /* Выбрать класс */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: const Color(0xFFF1F4F8),
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController2 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue2 ??=
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'fu0sz9h1' /* Математика */,
                                                ),
                                              ),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jv27cvw1' /* Математика */,
                                                )
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.dropDownValue2 =
                                                      val),
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4,
                                              height: 40.0,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF14181B),
                                                    letterSpacing: 0.0,
                                                  ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                's0hsdd71' /* Выбрать предмет */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: const Color(0xFFF1F4F8),
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 12.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/12ppp.png',
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 75.0,
                                              decoration: const BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0,
                                                                20.0, 0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm3rbyay6' /* Персональное
обучение */
                                                        ,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 55.0,
                                              decoration: const BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'vgh3qtqz' /* Перейти */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0xFF4B39EF),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFF4B39EF),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(
                                                    GetListOfChaptersCall.call(
                                                  gradeId:
                                                      currentUserData?.gradeId,
                                                  token: FFAppState().token,
                                                  lang: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetListOfChaptersResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final chapterList =
                                                (listViewGetListOfChaptersResponse
                                                                .jsonBody
                                                                .toList()
                                                                .map<ChapterStruct?>(
                                                                    ChapterStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStruct?>)
                                                        .withoutNulls
                                                        .sortedList(
                                                            keyOf: (e) => e.id,
                                                            desc: false)
                                                        .toList() ??
                                                    [];

                                            return RefreshIndicator(
                                              onRefresh: () async {
                                                safeSetState(() =>
                                                    _model.apiRequestCompleter =
                                                        null);
                                                await _model
                                                    .waitForApiRequestCompleted();
                                              },
                                              child: ListView.separated(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: chapterList.length,
                                                separatorBuilder: (_, __) =>
                                                    const SizedBox(height: 10.0),
                                                itemBuilder: (context,
                                                    chapterListIndex) {
                                                  final chapterListItem =
                                                      chapterList[
                                                          chapterListIndex];
                                                  return Container(
                                                    decoration: const BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 75.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0x1BF1F4F8),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0x366F61EF),
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'ListThemesPage',
                                                              queryParameters: {
                                                                'chapterId':
                                                                    serializeParam(
                                                                  chapterListItem
                                                                      .id,
                                                                  ParamType.int,
                                                                ),
                                                                'chapterName':
                                                                    serializeParam(
                                                                  chapterListItem
                                                                      .name,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          4.0,
                                                                          4.0,
                                                                          4.0),
                                                                  child:
                                                                      Container(
                                                                    width: 4.0,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xE84B39EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.75,
                                                                  height: double
                                                                      .infinity,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        chapterListItem
                                                                            .name,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: const Color(0xFF14181B),
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_right_rounded,
                                                                  color: Color(
                                                                      0xFF6F61EF),
                                                                  size: 30.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
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
