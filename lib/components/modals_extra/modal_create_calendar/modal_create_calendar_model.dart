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

  // State field(s) for titolo widget.
  FocusNode? titoloFocusNode;
  TextEditingController? titoloTextController;
  String? Function(BuildContext, String?)? titoloTextControllerValidator;
  // State field(s) for Contenuto widget.
  FocusNode? contenutoFocusNode;
  TextEditingController? contenutoTextController;
  String? Function(BuildContext, String?)? contenutoTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for lunediDa widget.
  FocusNode? lunediDaFocusNode;
  TextEditingController? lunediDaTextController;
  String? Function(BuildContext, String?)? lunediDaTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for LunediA widget.
  FocusNode? lunediAFocusNode;
  TextEditingController? lunediATextController;
  String? Function(BuildContext, String?)? lunediATextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for lunedi_pausa_da widget.
  FocusNode? lunediPausaDaFocusNode;
  TextEditingController? lunediPausaDaTextController;
  String? Function(BuildContext, String?)? lunediPausaDaTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for Lunedi_pausa_al widget.
  FocusNode? lunediPausaAlFocusNode;
  TextEditingController? lunediPausaAlTextController;
  String? Function(BuildContext, String?)? lunediPausaAlTextControllerValidator;
  DateTime? datePicked4;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  DateTime? datePicked5;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  DateTime? datePicked6;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityTextController3;
  String? Function(BuildContext, String?)? cityTextController3Validator;
  DateTime? datePicked7;
  // State field(s) for city widget.
  FocusNode? cityFocusNode4;
  TextEditingController? cityTextController4;
  String? Function(BuildContext, String?)? cityTextController4Validator;
  DateTime? datePicked8;
  // State field(s) for city widget.
  FocusNode? cityFocusNode5;
  TextEditingController? cityTextController5;
  String? Function(BuildContext, String?)? cityTextController5Validator;
  DateTime? datePicked9;
  // State field(s) for city widget.
  FocusNode? cityFocusNode6;
  TextEditingController? cityTextController6;
  String? Function(BuildContext, String?)? cityTextController6Validator;
  DateTime? datePicked10;
  // State field(s) for city widget.
  FocusNode? cityFocusNode7;
  TextEditingController? cityTextController7;
  String? Function(BuildContext, String?)? cityTextController7Validator;
  DateTime? datePicked11;
  // State field(s) for city widget.
  FocusNode? cityFocusNode8;
  TextEditingController? cityTextController8;
  String? Function(BuildContext, String?)? cityTextController8Validator;
  DateTime? datePicked12;
  // State field(s) for city widget.
  FocusNode? cityFocusNode9;
  TextEditingController? cityTextController9;
  String? Function(BuildContext, String?)? cityTextController9Validator;
  DateTime? datePicked13;
  // State field(s) for city widget.
  FocusNode? cityFocusNode10;
  TextEditingController? cityTextController10;
  String? Function(BuildContext, String?)? cityTextController10Validator;
  DateTime? datePicked14;
  // State field(s) for city widget.
  FocusNode? cityFocusNode11;
  TextEditingController? cityTextController11;
  String? Function(BuildContext, String?)? cityTextController11Validator;
  DateTime? datePicked15;
  // State field(s) for city widget.
  FocusNode? cityFocusNode12;
  TextEditingController? cityTextController12;
  String? Function(BuildContext, String?)? cityTextController12Validator;
  DateTime? datePicked16;
  // State field(s) for city widget.
  FocusNode? cityFocusNode13;
  TextEditingController? cityTextController13;
  String? Function(BuildContext, String?)? cityTextController13Validator;
  DateTime? datePicked17;
  // State field(s) for city widget.
  FocusNode? cityFocusNode14;
  TextEditingController? cityTextController14;
  String? Function(BuildContext, String?)? cityTextController14Validator;
  DateTime? datePicked18;
  // State field(s) for city widget.
  FocusNode? cityFocusNode15;
  TextEditingController? cityTextController15;
  String? Function(BuildContext, String?)? cityTextController15Validator;
  DateTime? datePicked19;
  // State field(s) for city widget.
  FocusNode? cityFocusNode16;
  TextEditingController? cityTextController16;
  String? Function(BuildContext, String?)? cityTextController16Validator;
  DateTime? datePicked20;
  // State field(s) for city widget.
  FocusNode? cityFocusNode17;
  TextEditingController? cityTextController17;
  String? Function(BuildContext, String?)? cityTextController17Validator;
  DateTime? datePicked21;
  // State field(s) for city widget.
  FocusNode? cityFocusNode18;
  TextEditingController? cityTextController18;
  String? Function(BuildContext, String?)? cityTextController18Validator;
  DateTime? datePicked22;
  // State field(s) for city widget.
  FocusNode? cityFocusNode19;
  TextEditingController? cityTextController19;
  String? Function(BuildContext, String?)? cityTextController19Validator;
  DateTime? datePicked23;
  // State field(s) for city widget.
  FocusNode? cityFocusNode20;
  TextEditingController? cityTextController20;
  String? Function(BuildContext, String?)? cityTextController20Validator;
  DateTime? datePicked24;
  // State field(s) for city widget.
  FocusNode? cityFocusNode21;
  TextEditingController? cityTextController21;
  String? Function(BuildContext, String?)? cityTextController21Validator;
  DateTime? datePicked25;
  // State field(s) for city widget.
  FocusNode? cityFocusNode22;
  TextEditingController? cityTextController22;
  String? Function(BuildContext, String?)? cityTextController22Validator;
  DateTime? datePicked26;
  // State field(s) for city widget.
  FocusNode? cityFocusNode23;
  TextEditingController? cityTextController23;
  String? Function(BuildContext, String?)? cityTextController23Validator;
  DateTime? datePicked27;
  // State field(s) for city widget.
  FocusNode? cityFocusNode24;
  TextEditingController? cityTextController24;
  String? Function(BuildContext, String?)? cityTextController24Validator;
  DateTime? datePicked28;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titoloFocusNode?.dispose();
    titoloTextController?.dispose();

    contenutoFocusNode?.dispose();
    contenutoTextController?.dispose();

    tabBarController?.dispose();
    lunediDaFocusNode?.dispose();
    lunediDaTextController?.dispose();

    lunediAFocusNode?.dispose();
    lunediATextController?.dispose();

    lunediPausaDaFocusNode?.dispose();
    lunediPausaDaTextController?.dispose();

    lunediPausaAlFocusNode?.dispose();
    lunediPausaAlTextController?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    cityFocusNode3?.dispose();
    cityTextController3?.dispose();

    cityFocusNode4?.dispose();
    cityTextController4?.dispose();

    cityFocusNode5?.dispose();
    cityTextController5?.dispose();

    cityFocusNode6?.dispose();
    cityTextController6?.dispose();

    cityFocusNode7?.dispose();
    cityTextController7?.dispose();

    cityFocusNode8?.dispose();
    cityTextController8?.dispose();

    cityFocusNode9?.dispose();
    cityTextController9?.dispose();

    cityFocusNode10?.dispose();
    cityTextController10?.dispose();

    cityFocusNode11?.dispose();
    cityTextController11?.dispose();

    cityFocusNode12?.dispose();
    cityTextController12?.dispose();

    cityFocusNode13?.dispose();
    cityTextController13?.dispose();

    cityFocusNode14?.dispose();
    cityTextController14?.dispose();

    cityFocusNode15?.dispose();
    cityTextController15?.dispose();

    cityFocusNode16?.dispose();
    cityTextController16?.dispose();

    cityFocusNode17?.dispose();
    cityTextController17?.dispose();

    cityFocusNode18?.dispose();
    cityTextController18?.dispose();

    cityFocusNode19?.dispose();
    cityTextController19?.dispose();

    cityFocusNode20?.dispose();
    cityTextController20?.dispose();

    cityFocusNode21?.dispose();
    cityTextController21?.dispose();

    cityFocusNode22?.dispose();
    cityTextController22?.dispose();

    cityFocusNode23?.dispose();
    cityTextController23?.dispose();

    cityFocusNode24?.dispose();
    cityTextController24?.dispose();
  }
}
