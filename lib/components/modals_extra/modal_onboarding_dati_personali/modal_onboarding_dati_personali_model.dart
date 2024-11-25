import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'modal_onboarding_dati_personali_widget.dart'
    show ModalOnboardingDatiPersonaliWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalOnboardingDatiPersonaliModel
    extends FlutterFlowModel<ModalOnboardingDatiPersonaliWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for cognome widget.
  FocusNode? cognomeFocusNode;
  TextEditingController? cognomeTextController;
  String? Function(BuildContext, String?)? cognomeTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for sesso widget.
  String? sessoValue;
  FormFieldController<String>? sessoValueController;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    cognomeFocusNode?.dispose();
    cognomeTextController?.dispose();

    textFieldFocusNode?.dispose();

    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
