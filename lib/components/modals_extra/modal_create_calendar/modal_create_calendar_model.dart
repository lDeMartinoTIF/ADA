import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'modal_create_calendar_widget.dart' show ModalCreateCalendarWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCreateCalendarModel
    extends FlutterFlowModel<ModalCreateCalendarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nome_calendario widget.
  FocusNode? nomeCalendarioFocusNode;
  TextEditingController? nomeCalendarioTextController;
  String? Function(BuildContext, String?)?
      nomeCalendarioTextControllerValidator;
  // State field(s) for buffer widget.
  FocusNode? bufferFocusNode;
  TextEditingController? bufferTextController;
  String? Function(BuildContext, String?)? bufferTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for lunedi_da widget.
  FocusNode? lunediDaFocusNode;
  TextEditingController? lunediDaTextController;
  String? Function(BuildContext, String?)? lunediDaTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for Lunedi_a widget.
  FocusNode? lunediAFocusNode;
  TextEditingController? lunediATextController;
  String? Function(BuildContext, String?)? lunediATextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for lunedi_pausa_da widget.
  FocusNode? lunediPausaDaFocusNode;
  TextEditingController? lunediPausaDaTextController;
  String? Function(BuildContext, String?)? lunediPausaDaTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for Lunedi_pausa_a widget.
  FocusNode? lunediPausaAFocusNode;
  TextEditingController? lunediPausaATextController;
  String? Function(BuildContext, String?)? lunediPausaATextControllerValidator;
  DateTime? datePicked4;
  // State field(s) for Martedi_da widget.
  FocusNode? martediDaFocusNode;
  TextEditingController? martediDaTextController;
  String? Function(BuildContext, String?)? martediDaTextControllerValidator;
  DateTime? datePicked5;
  // State field(s) for Martedi_a widget.
  FocusNode? martediAFocusNode;
  TextEditingController? martediATextController;
  String? Function(BuildContext, String?)? martediATextControllerValidator;
  DateTime? datePicked6;
  // State field(s) for martedi_pausa_da widget.
  FocusNode? martediPausaDaFocusNode;
  TextEditingController? martediPausaDaTextController;
  String? Function(BuildContext, String?)?
      martediPausaDaTextControllerValidator;
  DateTime? datePicked7;
  // State field(s) for martedi_pausa_a widget.
  FocusNode? martediPausaAFocusNode1;
  TextEditingController? martediPausaATextController1;
  String? Function(BuildContext, String?)?
      martediPausaATextController1Validator;
  DateTime? datePicked8;
  // State field(s) for mercoledi_da widget.
  FocusNode? mercolediDaFocusNode;
  TextEditingController? mercolediDaTextController;
  String? Function(BuildContext, String?)? mercolediDaTextControllerValidator;
  DateTime? datePicked9;
  // State field(s) for mercoledi_a widget.
  FocusNode? mercolediAFocusNode;
  TextEditingController? mercolediATextController;
  String? Function(BuildContext, String?)? mercolediATextControllerValidator;
  DateTime? datePicked10;
  // State field(s) for mercoledi_pausa_da widget.
  FocusNode? mercolediPausaDaFocusNode;
  TextEditingController? mercolediPausaDaTextController;
  String? Function(BuildContext, String?)?
      mercolediPausaDaTextControllerValidator;
  DateTime? datePicked11;
  // State field(s) for martedi_pausa_a widget.
  FocusNode? martediPausaAFocusNode2;
  TextEditingController? martediPausaATextController2;
  String? Function(BuildContext, String?)?
      martediPausaATextController2Validator;
  DateTime? datePicked12;
  // State field(s) for giovedi_da widget.
  FocusNode? giovediDaFocusNode;
  TextEditingController? giovediDaTextController;
  String? Function(BuildContext, String?)? giovediDaTextControllerValidator;
  DateTime? datePicked13;
  // State field(s) for giovedi_a widget.
  FocusNode? giovediAFocusNode1;
  TextEditingController? giovediATextController1;
  String? Function(BuildContext, String?)? giovediATextController1Validator;
  DateTime? datePicked14;
  // State field(s) for giovedi_pausa_da widget.
  FocusNode? giovediPausaDaFocusNode;
  TextEditingController? giovediPausaDaTextController;
  String? Function(BuildContext, String?)?
      giovediPausaDaTextControllerValidator;
  DateTime? datePicked15;
  // State field(s) for giovedi_pausa_a widget.
  FocusNode? giovediPausaAFocusNode;
  TextEditingController? giovediPausaATextController;
  String? Function(BuildContext, String?)? giovediPausaATextControllerValidator;
  DateTime? datePicked16;
  // State field(s) for venerdi_da widget.
  FocusNode? venerdiDaFocusNode;
  TextEditingController? venerdiDaTextController;
  String? Function(BuildContext, String?)? venerdiDaTextControllerValidator;
  DateTime? datePicked17;
  // State field(s) for giovedi_a widget.
  FocusNode? giovediAFocusNode2;
  TextEditingController? giovediATextController2;
  String? Function(BuildContext, String?)? giovediATextController2Validator;
  DateTime? datePicked18;
  // State field(s) for venerdi_pausa_da widget.
  FocusNode? venerdiPausaDaFocusNode;
  TextEditingController? venerdiPausaDaTextController;
  String? Function(BuildContext, String?)?
      venerdiPausaDaTextControllerValidator;
  DateTime? datePicked19;
  // State field(s) for venerdi_pausa_a widget.
  FocusNode? venerdiPausaAFocusNode;
  TextEditingController? venerdiPausaATextController;
  String? Function(BuildContext, String?)? venerdiPausaATextControllerValidator;
  DateTime? datePicked20;
  // State field(s) for sabato_da widget.
  FocusNode? sabatoDaFocusNode1;
  TextEditingController? sabatoDaTextController1;
  String? Function(BuildContext, String?)? sabatoDaTextController1Validator;
  DateTime? datePicked21;
  // State field(s) for sabato_a widget.
  FocusNode? sabatoAFocusNode1;
  TextEditingController? sabatoATextController1;
  String? Function(BuildContext, String?)? sabatoATextController1Validator;
  DateTime? datePicked22;
  // State field(s) for sabato_da widget.
  FocusNode? sabatoDaFocusNode2;
  TextEditingController? sabatoDaTextController2;
  String? Function(BuildContext, String?)? sabatoDaTextController2Validator;
  DateTime? datePicked23;
  // State field(s) for sabato_a widget.
  FocusNode? sabatoAFocusNode2;
  TextEditingController? sabatoATextController2;
  String? Function(BuildContext, String?)? sabatoATextController2Validator;
  DateTime? datePicked24;
  // State field(s) for domenica_da widget.
  FocusNode? domenicaDaFocusNode;
  TextEditingController? domenicaDaTextController;
  String? Function(BuildContext, String?)? domenicaDaTextControllerValidator;
  DateTime? datePicked25;
  // State field(s) for domenica_a widget.
  FocusNode? domenicaAFocusNode;
  TextEditingController? domenicaATextController;
  String? Function(BuildContext, String?)? domenicaATextControllerValidator;
  DateTime? datePicked26;
  // State field(s) for domenica_pausa_da widget.
  FocusNode? domenicaPausaDaFocusNode;
  TextEditingController? domenicaPausaDaTextController;
  String? Function(BuildContext, String?)?
      domenicaPausaDaTextControllerValidator;
  DateTime? datePicked27;
  // State field(s) for domenica_pausa_a widget.
  FocusNode? domenicaPausaAFocusNode;
  TextEditingController? domenicaPausaATextController;
  String? Function(BuildContext, String?)?
      domenicaPausaATextControllerValidator;
  DateTime? datePicked28;
  // Stores action output result for [Backend Call - API (Insert Calendar)] action in Button widget.
  ApiCallResponse? apiResultmqf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeCalendarioFocusNode?.dispose();
    nomeCalendarioTextController?.dispose();

    bufferFocusNode?.dispose();
    bufferTextController?.dispose();

    tabBarController?.dispose();
    lunediDaFocusNode?.dispose();
    lunediDaTextController?.dispose();

    lunediAFocusNode?.dispose();
    lunediATextController?.dispose();

    lunediPausaDaFocusNode?.dispose();
    lunediPausaDaTextController?.dispose();

    lunediPausaAFocusNode?.dispose();
    lunediPausaATextController?.dispose();

    martediDaFocusNode?.dispose();
    martediDaTextController?.dispose();

    martediAFocusNode?.dispose();
    martediATextController?.dispose();

    martediPausaDaFocusNode?.dispose();
    martediPausaDaTextController?.dispose();

    martediPausaAFocusNode1?.dispose();
    martediPausaATextController1?.dispose();

    mercolediDaFocusNode?.dispose();
    mercolediDaTextController?.dispose();

    mercolediAFocusNode?.dispose();
    mercolediATextController?.dispose();

    mercolediPausaDaFocusNode?.dispose();
    mercolediPausaDaTextController?.dispose();

    martediPausaAFocusNode2?.dispose();
    martediPausaATextController2?.dispose();

    giovediDaFocusNode?.dispose();
    giovediDaTextController?.dispose();

    giovediAFocusNode1?.dispose();
    giovediATextController1?.dispose();

    giovediPausaDaFocusNode?.dispose();
    giovediPausaDaTextController?.dispose();

    giovediPausaAFocusNode?.dispose();
    giovediPausaATextController?.dispose();

    venerdiDaFocusNode?.dispose();
    venerdiDaTextController?.dispose();

    giovediAFocusNode2?.dispose();
    giovediATextController2?.dispose();

    venerdiPausaDaFocusNode?.dispose();
    venerdiPausaDaTextController?.dispose();

    venerdiPausaAFocusNode?.dispose();
    venerdiPausaATextController?.dispose();

    sabatoDaFocusNode1?.dispose();
    sabatoDaTextController1?.dispose();

    sabatoAFocusNode1?.dispose();
    sabatoATextController1?.dispose();

    sabatoDaFocusNode2?.dispose();
    sabatoDaTextController2?.dispose();

    sabatoAFocusNode2?.dispose();
    sabatoATextController2?.dispose();

    domenicaDaFocusNode?.dispose();
    domenicaDaTextController?.dispose();

    domenicaAFocusNode?.dispose();
    domenicaATextController?.dispose();

    domenicaPausaDaFocusNode?.dispose();
    domenicaPausaDaTextController?.dispose();

    domenicaPausaAFocusNode?.dispose();
    domenicaPausaATextController?.dispose();
  }
}
