import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'list_themes_page_model.dart';
export 'list_themes_page_model.dart';

class ListThemesPageWidget extends StatefulWidget {
  const ListThemesPageWidget({
    super.key,
    required this.chapterId,
    required this.chapterName,
  });

  final int? chapterId;
  final String? chapterName;

  @override
  State<ListThemesPageWidget> createState() => _ListThemesPageWidgetState();
}

class _ListThemesPageWidgetState extends State<ListThemesPageWidget> {
  late ListThemesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListThemesPageModel());

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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Text(
                  widget.chapterName!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter ??=
                            Completer<ApiCallResponse>()
                              ..complete(GetListOfThemesCall.call(
                                chapterId: widget.chapterId,
                                token: currentUserData?.token,
                                lang: FFLocalizations.of(context).languageCode,
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
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final listViewGetListOfThemesResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final themeList = (listViewGetListOfThemesResponse
                                      .jsonBody
                                      .toList()
                                      .map<ThemeStruct?>(
                                          ThemeStruct.maybeFromMap)
                                      .toList() as Iterable<ThemeStruct?>)
                                  .withoutNulls
                                  .sortedList(keyOf: (e) => e.id, desc: false)
                                  .toList() ??
                              [];

                          return RefreshIndicator(
                            onRefresh: () async {
                              safeSetState(
                                  () => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: themeList.length,
                              itemBuilder: (context, themeListIndex) {
                                final themeListItem = themeList[themeListIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 20.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: Image.asset(
                                          'assets/images/P19.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                        color: const Color(0x474B39EF),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 69.0,
                                          decoration: const BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                  height: 70.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        themeListItem.name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: const Color(
                                                                  0xFF14181B),
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: const BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 10.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    height: double.infinity,
                                                    decoration: const BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Stack(
                                                              children: [
                                                                const Icon(
                                                                  Icons
                                                                      .check_circle,
                                                                  color: Color(
                                                                      0x8FE0E3E7),
                                                                  size: 40.0,
                                                                ),
                                                                if (functions
                                                                    .isFilledLevel(
                                                                        valueOrDefault<
                                                                            int>(
                                                                          themeListItem
                                                                              .level,
                                                                          1,
                                                                        ),
                                                                        1))
                                                                  const Icon(
                                                                    Icons
                                                                        .check_circle,
                                                                    color: Color(
                                                                        0xB84B39EF),
                                                                    size: 40.0,
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Stack(
                                                              children: [
                                                                const Icon(
                                                                  Icons
                                                                      .check_circle,
                                                                  color: Color(
                                                                      0x8FE0E3E7),
                                                                  size: 40.0,
                                                                ),
                                                                if (functions
                                                                    .isFilledLevel(
                                                                        valueOrDefault<
                                                                            int>(
                                                                          themeListItem
                                                                              .level,
                                                                          1,
                                                                        ),
                                                                        2))
                                                                  const Icon(
                                                                    Icons
                                                                        .check_circle,
                                                                    color: Color(
                                                                        0xB84B39EF),
                                                                    size: 40.0,
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          Stack(
                                                            children: [
                                                              const Icon(
                                                                Icons
                                                                    .check_circle,
                                                                color: Color(
                                                                    0x8FE0E3E7),
                                                                size: 40.0,
                                                              ),
                                                              if (functions
                                                                  .isFilledLevel(
                                                                      valueOrDefault<
                                                                          int>(
                                                                        themeListItem
                                                                            .level,
                                                                        1,
                                                                      ),
                                                                      3))
                                                                const Icon(
                                                                  Icons
                                                                      .check_circle,
                                                                  color: Color(
                                                                      0xB84B39EF),
                                                                  size: 40.0,
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 10.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      var shouldSetState =
                                                          false;
                                                      _model.apiResultf04 =
                                                          await StartTestCall
                                                              .call(
                                                        level:
                                                            themeListItem.level,
                                                        token: currentUserData
                                                            ?.token,
                                                        themeId:
                                                            themeListItem.id,
                                                        lang:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      );

                                                      shouldSetState = true;
                                                      if ((_model.apiResultf04
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.apiResult2ur =
                                                            await FirstTaskCall
                                                                .call(
                                                          token: currentUserData
                                                              ?.token,
                                                          collectionId:
                                                              StartTestCall
                                                                  .collectionId(
                                                            (_model.apiResultf04
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          lang: FFLocalizations
                                                                  .of(context)
                                                              .languageCode,
                                                        );

                                                        shouldSetState = true;
                                                        if ((_model.apiResult2ur
                                                                ?.succeeded ??
                                                            true)) {
                                                          context.pushNamed(
                                                            'TestPage',
                                                            queryParameters: {
                                                              'taskText':
                                                                  serializeParam(
                                                                valueOrDefault<
                                                                    String>(
                                                                  TestDtoStruct.maybeFromMap(
                                                                          (_model.apiResult2ur?.jsonBody ??
                                                                              ''))
                                                                      ?.nextTask
                                                                      .taskName,
                                                                  'n',
                                                                ),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'answers':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  (_model.apiResult2ur
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.nextTask.answers''',
                                                                  true,
                                                                ),
                                                                ParamType.JSON,
                                                                isList: true,
                                                              ),
                                                              'percent':
                                                                  serializeParam(
                                                                TestDtoStruct.maybeFromMap(
                                                                        (_model.apiResult2ur?.jsonBody ??
                                                                            ''))
                                                                    ?.percent,
                                                                ParamType
                                                                    .double,
                                                              ),
                                                              'collectionId':
                                                                  serializeParam(
                                                                StartTestCall
                                                                    .collectionId(
                                                                  (_model.apiResultf04
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                ParamType.int,
                                                              ),
                                                              'collectionTaskId':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  (_model.apiResult2ur
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.nextTask.collectionTaskId''',
                                                                ),
                                                                ParamType.int,
                                                              ),
                                                              'showType':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  (_model.apiResult2ur
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.nextTask.showType''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'taskImagePath':
                                                                  serializeParam(
                                                                'TEXT_IMAGE' ==
                                                                        getJsonField(
                                                                          (_model.apiResult2ur?.jsonBody ??
                                                                              ''),
                                                                          r'''$.nextTask.showType''',
                                                                        ).toString()
                                                                    ? getJsonField(
                                                                        (_model.apiResult2ur?.jsonBody ??
                                                                            ''),
                                                                        r'''$.nextTask.imageUrl''',
                                                                      ).toString()
                                                                    : null,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    const Text('Упс'),
                                                                content: const Text(
                                                                    'Что-то пошло не так'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          if (shouldSetState) {
                                                            safeSetState(() {});
                                                          }
                                                          return;
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  const Text('Упс'),
                                                              content: Text((_model
                                                                          .apiResult2ur
                                                                          ?.jsonBody ??
                                                                      '')
                                                                  .toString()),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: const Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        if (shouldSetState) {
                                                          safeSetState(() {});
                                                        }
                                                        return;
                                                      }

                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'ri36jpqq' /* Перейти */,
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
                                                      color: const Color(0xFF6F61EF),
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
                                                      elevation: 0.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x474B39EF),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
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
                                );
                              },
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
    );
  }
}
