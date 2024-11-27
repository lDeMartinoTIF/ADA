import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'modal_create_info_a_i_widget.dart' show ModalCreateInfoAIWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCreateInfoAIModel extends FlutterFlowModel<ModalCreateInfoAIWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for titolo widget.
  FocusNode? titoloFocusNode;
  TextEditingController? titoloTextController;
  String? Function(BuildContext, String?)? titoloTextControllerValidator;
  // State field(s) for Contenuto widget.
  FocusNode? contenutoFocusNode;
  TextEditingController? contenutoTextController;
  String? Function(BuildContext, String?)? contenutoTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityTextController3;
  String? Function(BuildContext, String?)? cityTextController3Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode4;
  TextEditingController? cityTextController4;
  String? Function(BuildContext, String?)? cityTextController4Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode5;
  TextEditingController? cityTextController5;
  String? Function(BuildContext, String?)? cityTextController5Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode6;
  TextEditingController? cityTextController6;
  String? Function(BuildContext, String?)? cityTextController6Validator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titoloFocusNode?.dispose();
    titoloTextController?.dispose();

    contenutoFocusNode?.dispose();
    contenutoTextController?.dispose();

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

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
