import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_create_tipo_servizio_widget.dart'
    show ModalCreateTipoServizioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCreateTipoServizioModel
    extends FlutterFlowModel<ModalCreateTipoServizioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Tiposervizio widget.
  FocusNode? tiposervizioFocusNode;
  TextEditingController? tiposervizioTextController;
  String? Function(BuildContext, String?)? tiposervizioTextControllerValidator;
  // State field(s) for Tiposerviziodescri widget.
  FocusNode? tiposerviziodescriFocusNode;
  TextEditingController? tiposerviziodescriTextController;
  String? Function(BuildContext, String?)?
      tiposerviziodescriTextControllerValidator;
  // Stores action output result for [Backend Call - API (Insert Tipo Servizio)] action in Button widget.
  ApiCallResponse? resultInsertTipoServizio;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tiposervizioFocusNode?.dispose();
    tiposervizioTextController?.dispose();

    tiposerviziodescriFocusNode?.dispose();
    tiposerviziodescriTextController?.dispose();
  }
}
