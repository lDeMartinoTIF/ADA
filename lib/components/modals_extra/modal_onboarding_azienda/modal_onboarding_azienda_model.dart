import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'modal_onboarding_azienda_widget.dart' show ModalOnboardingAziendaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalOnboardingAziendaModel
    extends FlutterFlowModel<ModalOnboardingAziendaWidget> {
  ///  Local state fields for this component.

  int? photoNumber;

  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeAzienda widget.
  FocusNode? nomeAziendaFocusNode;
  TextEditingController? nomeAziendaTextController;
  String? Function(BuildContext, String?)? nomeAziendaTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update Anagrafica ByToken)] action in Button widget.
  ApiCallResponse? responseUpdateAnagrafica;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeAziendaFocusNode?.dispose();
    nomeAziendaTextController?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
