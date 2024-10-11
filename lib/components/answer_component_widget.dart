import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'answer_component_model.dart';
export 'answer_component_model.dart';

class AnswerComponentWidget extends StatefulWidget {
  const AnswerComponentWidget({
    super.key,
    this.parameter1,
    required this.parameter2,
  });

  final dynamic parameter1;
  final bool? parameter2;

  @override
  State<AnswerComponentWidget> createState() => _AnswerComponentWidgetState();
}

class _AnswerComponentWidgetState extends State<AnswerComponentWidget> {
  late AnswerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnswerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (true) {
            if (widget.parameter2 != null) {
              _model.isChoosed = false;
              safeSetState(() {});
            } else {
              _model.isChoosed = true;
              safeSetState(() {});
            }
          } else {
            if (widget.parameter2 != null) {
              _model.isChoosed = false;
              safeSetState(() {});
            } else {
              _model.isChoosed = false;
              safeSetState(() {});
            }
          }
        },
        child: Container(
          width: double.infinity,
          height: 55.0,
          decoration: BoxDecoration(
            color: _model.isChoosed == true
                ? FlutterFlowTheme.of(context).primary
                : Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: const Color(0xFFBFBFBF),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Icon(
                  Icons.circle_outlined,
                  color: Color(0xFFBFBFBF),
                  size: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  widget.parameter1!.toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
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
