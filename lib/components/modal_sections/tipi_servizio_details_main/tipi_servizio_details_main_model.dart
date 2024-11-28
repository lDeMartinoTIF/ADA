import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'tipi_servizio_details_main_widget.dart'
    show TipiServizioDetailsMainWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TipiServizioDetailsMainModel
    extends FlutterFlowModel<TipiServizioDetailsMainWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Tiposerviziodescri widget.
  FocusNode? tiposerviziodescriFocusNode;
  TextEditingController? tiposerviziodescriTextController;
  String? Function(BuildContext, String?)?
      tiposerviziodescriTextControllerValidator;
  // State field(s) for Tiposervizio widget.
  FocusNode? tiposervizioFocusNode;
  TextEditingController? tiposervizioTextController;
  String? Function(BuildContext, String?)? tiposervizioTextControllerValidator;
  // Stores action output result for [Backend Call - API (Delete Tipo Servizio)] action in Button widget.
  ApiCallResponse? apiResultno4;
  // Stores action output result for [Backend Call - API (Update Tipo Servizio)] action in Button widget.
  ApiCallResponse? apiResultj70;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tiposerviziodescriFocusNode?.dispose();
    tiposerviziodescriTextController?.dispose();

    tiposervizioFocusNode?.dispose();
    tiposervizioTextController?.dispose();
  }
}
