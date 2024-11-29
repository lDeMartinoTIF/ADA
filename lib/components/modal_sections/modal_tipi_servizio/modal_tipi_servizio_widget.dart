import '/components/modal_sections/tipi_servizio_details_main/tipi_servizio_details_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_tipi_servizio_model.dart';
export 'modal_tipi_servizio_model.dart';

class ModalTipiServizioWidget extends StatefulWidget {
  const ModalTipiServizioWidget({
    super.key,
    required this.jsonTipiServizio,
  });

  final dynamic jsonTipiServizio;

  @override
  State<ModalTipiServizioWidget> createState() =>
      _ModalTipiServizioWidgetState();
}

class _ModalTipiServizioWidgetState extends State<ModalTipiServizioWidget>
    with TickerProviderStateMixin {
  late ModalTipiServizioModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalTipiServizioModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0, 1.047),
            end: Offset(0, 0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('MODAL_TIPI_SERVIZIO_Column_nx6t0d47_ON_T');
              Navigator.pop(context);
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).accent1,
                      icon: Icon(
                        Icons.close_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'MODAL_TIPI_SERVIZIO_close_outlined_ICN_O');
                        Navigator.pop(context);
                      },
                    ).animateOnPageLoad(
                        animationsMap['iconButtonOnPageLoadAnimation']!),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(1.0, -1.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              width: double.infinity,
              height: double.infinity,
              constraints: BoxConstraints(
                minHeight: 150.0,
                maxWidth: 500.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      7.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: wrapWithModel(
                    model: _model.tipiServizioDetailsMainModel,
                    updateCallback: () => safeSetState(() {}),
                    child: TipiServizioDetailsMainWidget(
                      showBack: true,
                      jsonTipiServizio: widget!.jsonTipiServizio!,
                    ),
                  ),
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ),
      ],
    );
  }
}
