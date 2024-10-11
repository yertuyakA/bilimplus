import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'test_page_model.dart';
export 'test_page_model.dart';

class TestPageWidget extends StatefulWidget {
  const TestPageWidget({
    super.key,
    required this.taskText,
    required this.answers,
    required this.percent,
    required this.collectionId,
    required this.collectionTaskId,
    String? taskImagePath,
    required this.showType,
  }) : taskImagePath = taskImagePath ?? '';

  final String? taskText;
  final List<dynamic>? answers;
  final double? percent;
  final int? collectionId;
  final int? collectionTaskId;
  final String taskImagePath;
  final String? showType;

  @override
  State<TestPageWidget> createState() => _TestPageWidgetState();
}

class _TestPageWidgetState extends State<TestPageWidget> {
  late TestPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestPageModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFE7E6F5),
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('dashboard');
                      },
                      child: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 40.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
                  child: LinearPercentIndicator(
                    percent: widget.percent!,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    lineHeight: 20.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: const Color(0xFF4B39EF),
                    backgroundColor: const Color(0x204B39EF),
                    barRadius: const Radius.circular(20.0),
                    padding: EdgeInsets.zero,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 16.0,
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 12.0, 20.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.225,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Text(
                                      widget.taskText!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF14181B),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                if (widget.showType == 'TEXT_IMAGE')
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      functions
                                          .getImagePath(widget.taskImagePath)!,
                                      width: double.infinity,
                                      height: 120.0,
                                      fit: BoxFit.contain,
                                      alignment: const Alignment(-1.0, 0.0),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.335,
                            decoration: const BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final asnwerList = widget.answers!.toList();

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: asnwerList.length,
                                  itemBuilder: (context, asnwerListIndex) {
                                    final asnwerListItem =
                                        asnwerList[asnwerListIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.selected = getJsonField(
                                            asnwerListItem,
                                            r'''$.name''',
                                          ).toString();
                                          _model.selectedAnswerId =
                                              getJsonField(
                                            asnwerListItem,
                                            r'''$.id''',
                                          );
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 55.0,
                                          decoration: BoxDecoration(
                                            color: () {
                                              if ((_model.isChecked == true) &&
                                                  (_model.selected ==
                                                      getJsonField(
                                                        asnwerListItem,
                                                        r'''$.name''',
                                                      ).toString()) &&
                                                  (_model.isCorrect == true)) {
                                                return const Color(0x1300FF46);
                                              } else if ((_model.isChecked ==
                                                      true) &&
                                                  (_model.selected ==
                                                      getJsonField(
                                                        asnwerListItem,
                                                        r'''$.name''',
                                                      ).toString()) &&
                                                  (_model.isCorrect == false)) {
                                                return const Color(0xFFF9ADAD);
                                              } else if (_model.selected ==
                                                  getJsonField(
                                                    asnwerListItem,
                                                    r'''$.name''',
                                                  ).toString()) {
                                                return const Color(0x1F1800EB);
                                              } else {
                                                return Colors.white;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: () {
                                                if ((_model.isChecked ==
                                                        true) &&
                                                    (_model.selected ==
                                                        getJsonField(
                                                          asnwerListItem,
                                                          r'''$.name''',
                                                        ).toString()) &&
                                                    (_model.isCorrect ==
                                                        true)) {
                                                  return const Color(0xFF007C21);
                                                } else if ((_model.isChecked ==
                                                        true) &&
                                                    (_model.selected ==
                                                        getJsonField(
                                                          asnwerListItem,
                                                          r'''$.name''',
                                                        ).toString()) &&
                                                    (_model.isCorrect ==
                                                        false)) {
                                                  return const Color(0xFFEC1111);
                                                } else if (_model.selected ==
                                                    getJsonField(
                                                      asnwerListItem,
                                                      r'''$.name''',
                                                    ).toString()) {
                                                  return const Color(0xFF1900EE);
                                                } else {
                                                  return const Color(0xFFBFBFBF);
                                                }
                                              }(),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.circle_outlined,
                                                          color: () {
                                                            if ((_model.isChecked ==
                                                                    true) &&
                                                                (_model
                                                                        .selected ==
                                                                    getJsonField(
                                                                      asnwerListItem,
                                                                      r'''$.name''',
                                                                    )
                                                                        .toString())) {
                                                              return const Color(
                                                                  0x00000000);
                                                            } else if (_model
                                                                    .selected ==
                                                                getJsonField(
                                                                  asnwerListItem,
                                                                  r'''$.name''',
                                                                ).toString()) {
                                                              return const Color(
                                                                  0xFF1C00FF);
                                                            } else {
                                                              return const Color(
                                                                  0xFFBFBFBF);
                                                            }
                                                          }(),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      if (_model.selected ==
                                                          getJsonField(
                                                            asnwerListItem,
                                                            r'''$.name''',
                                                          ).toString())
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons
                                                                .circle_rounded,
                                                            color: () {
                                                              if ((_model.isChecked ==
                                                                      true) &&
                                                                  (_model
                                                                          .selected ==
                                                                      getJsonField(
                                                                        asnwerListItem,
                                                                        r'''$.name''',
                                                                      )
                                                                          .toString())) {
                                                                return const Color(
                                                                    0x00000000);
                                                              } else if (_model
                                                                      .selected ==
                                                                  getJsonField(
                                                                    asnwerListItem,
                                                                    r'''$.name''',
                                                                  ).toString()) {
                                                                return const Color(
                                                                    0x511C00FF);
                                                              } else {
                                                                return const Color(
                                                                    0x00BFBFBF);
                                                              }
                                                            }(),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      if ((_model.isChecked ==
                                                                  true) &&
                                                              (_model
                                                                      .selected ==
                                                                  getJsonField(
                                                                    asnwerListItem,
                                                                    r'''$.name''',
                                                                  )
                                                                      .toString()) &&
                                                              (_model.isCorrect ==
                                                                  true)
                                                          ? true
                                                          : false)
                                                        const Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            color: Color(
                                                                0xFF00A623),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      if ((_model.isChecked ==
                                                                  true) &&
                                                              (_model
                                                                      .selected ==
                                                                  getJsonField(
                                                                    asnwerListItem,
                                                                    r'''$.name''',
                                                                  )
                                                                      .toString()) &&
                                                              (_model.isCorrect ==
                                                                  false)
                                                          ? true
                                                          : false)
                                                        const Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons
                                                                .highlight_off_rounded,
                                                            color: Color(
                                                                0xFFEC1111),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      getJsonField(
                                                        asnwerListItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: const Color(
                                                                0xFF14181B),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                            opacity: _model.isChecked == true ? 1.0 : 0.5,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.isChecked == true) {
                                  context.pushNamed('ExplanationPage');
                                } else {
                                  return;
                                }
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ee8ey3zo' /* Видео
объяснение */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF14181B),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Icon(
                                      Icons.play_circle_rounded,
                                      color: _model.isChecked == true
                                          ? const Color(0xFF4B39EF)
                                          : const Color(0xFFBFBFBF),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: _model.isChecked == true ? 1.0 : 0.5,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.isChecked == true) {
                                  context.pushNamed('ExplanationPage');
                                } else {
                                  return;
                                }
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'fpukfo9k' /* Решение
задания */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF14181B),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Icon(
                                      Icons.calculate_rounded,
                                      color: _model.isChecked == true
                                          ? const Color(0xFF4B39EF)
                                          : const Color(0xFFBFBFBF),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.isChecked == false) {
                        _model.apiResultye0 = await NextTaskCall.call(
                          token: currentUserData?.token,
                          answerId: _model.selectedAnswerId,
                          collectionTaskId: widget.collectionTaskId,
                          collectionId: widget.collectionId,
                        );

                        if ((_model.apiResultye0?.succeeded ?? true)) {
                          if (getJsonField(
                                (_model.apiResultye0?.jsonBody ?? ''),
                                r'''$.result''',
                              ) ==
                              null) {
                            _model.isLastQuestion = false;
                            safeSetState(() {});
                            _model.isChecked = true;
                            _model.correctAnswerId = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.currentTaskResult.answerId''',
                            );
                            _model.isCorrect = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.currentTaskResult.isCorrect''',
                            );
                            _model.nextAnswers = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.nextTask.answers''',
                              true,
                            )!
                                .toList()
                                .cast<dynamic>();
                            _model.nextTaskText = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.nextTask.taskName''',
                            ).toString();
                            _model.nextTastPercent = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.percent''',
                            );
                            _model.nextTaskCollectionId = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.nextTask.collectionTaskId''',
                            );
                            _model.showTypeLocal = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.nextTask.showType''',
                            ).toString();
                            _model.taskImagePathLocal = 'TEXT_IMAGE' ==
                                    getJsonField(
                                      (_model.apiResultye0?.jsonBody ?? ''),
                                      r'''$.nextTask.showType''',
                                    ).toString()
                                ? getJsonField(
                                    (_model.apiResultye0?.jsonBody ?? ''),
                                    r'''$.nextTask.imageUrl''',
                                  ).toString()
                                : null;
                            safeSetState(() {});
                          } else {
                            _model.isLastQuestion = true;
                            _model.resultPercent = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.result.percent''',
                            );
                            _model.resultScore = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.result.score''',
                            );
                            _model.resultCorrectCount = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.result.correctCount''',
                            );
                            _model.resultWrongCount = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.result.wrongCount''',
                            );
                            _model.themeName = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.result.name''',
                            ).toString();
                            _model.isChecked = true;
                            _model.correctAnswerId = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.currentTaskResult.answerId''',
                            );
                            _model.isCorrect = getJsonField(
                              (_model.apiResultye0?.jsonBody ?? ''),
                              r'''$.currentTaskResult.isCorrect''',
                            );
                            safeSetState(() {});
                          }
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('io'),
                                content: Text(
                                    (_model.apiResultye0?.jsonBody ?? '')
                                        .toString()),
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
                      } else {
                        if (_model.isLastQuestion == false) {
                          _model.isChecked = false;
                          safeSetState(() {});

                          context.pushNamed(
                            'TestPage',
                            queryParameters: {
                              'taskText': serializeParam(
                                _model.nextTaskText,
                                ParamType.String,
                              ),
                              'answers': serializeParam(
                                _model.nextAnswers,
                                ParamType.JSON,
                                isList: true,
                              ),
                              'percent': serializeParam(
                                _model.nextTastPercent,
                                ParamType.double,
                              ),
                              'collectionId': serializeParam(
                                widget.collectionId,
                                ParamType.int,
                              ),
                              'collectionTaskId': serializeParam(
                                _model.nextTaskCollectionId,
                                ParamType.int,
                              ),
                              'taskImagePath': serializeParam(
                                _model.taskImagePathLocal,
                                ParamType.String,
                              ),
                              'showType': serializeParam(
                                _model.showTypeLocal,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          context.pushNamed(
                            'ResultPage',
                            queryParameters: {
                              'score': serializeParam(
                                _model.resultScore,
                                ParamType.int,
                              ),
                              'percent': serializeParam(
                                _model.resultPercent,
                                ParamType.int,
                              ),
                              'correctCount': serializeParam(
                                _model.resultCorrectCount,
                                ParamType.int,
                              ),
                              'wrongCount': serializeParam(
                                _model.resultWrongCount,
                                ParamType.int,
                              ),
                              'collectionId': serializeParam(
                                widget.collectionId,
                                ParamType.int,
                              ),
                              'themeName': serializeParam(
                                _model.themeName,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        }
                      }

                      safeSetState(() {});
                    },
                    text: _model.isChecked == false ? 'Проверить' : 'Далее',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
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
      ),
    );
  }
}
