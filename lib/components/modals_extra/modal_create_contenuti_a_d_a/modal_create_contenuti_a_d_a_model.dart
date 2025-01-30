import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_create_contenuti_a_d_a_widget.dart'
    show ModalCreateContenutiADAWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCreateContenutiADAModel
    extends FlutterFlowModel<ModalCreateContenutiADAWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TitoloServizio widget.
  FocusNode? titoloServizioFocusNode;
  TextEditingController? titoloServizioTextController;
  String? Function(BuildContext, String?)?
      titoloServizioTextControllerValidator;
  // State field(s) for TipoServizio widget.
  String? tipoServizioValue;
  FormFieldController<String>? tipoServizioValueController;
  // State field(s) for Contenuto widget.
  FocusNode? contenutoFocusNode;
  TextEditingController? contenutoTextController;
  String? Function(BuildContext, String?)? contenutoTextControllerValidator;
  // State field(s) for Calendario widget.
  String? calendarioValue;
  FormFieldController<String>? calendarioValueController;
  // State field(s) for Prezzo widget.
  FocusNode? prezzoFocusNode;
  TextEditingController? prezzoTextController;
  String? Function(BuildContext, String?)? prezzoTextControllerValidator;
  // State field(s) for TempoServizio widget.
  FocusNode? tempoServizioFocusNode;
  TextEditingController? tempoServizioTextController;
  String? Function(BuildContext, String?)? tempoServizioTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for Scadenza widget.
  FocusNode? scadenzaFocusNode;
  TextEditingController? scadenzaTextController;
  String? Function(BuildContext, String?)? scadenzaTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for PreavvisoAnnullamento widget.
  FocusNode? preavvisoAnnullamentoFocusNode;
  TextEditingController? preavvisoAnnullamentoTextController;
  String? Function(BuildContext, String?)?
      preavvisoAnnullamentoTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for IndirizzoSpecifico widget.
  FocusNode? indirizzoSpecificoFocusNode;
  TextEditingController? indirizzoSpecificoTextController;
  String? Function(BuildContext, String?)?
      indirizzoSpecificoTextControllerValidator;
  // State field(s) for Link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
  // State field(s) for Mail widget.
  FocusNode? mailFocusNode;
  TextEditingController? mailTextController;
  String? Function(BuildContext, String?)? mailTextControllerValidator;
  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for FileInsertContenutiADA widget.
  FocusNode? fileInsertContenutiADAFocusNode;
  TextEditingController? fileInsertContenutiADATextController;
  String? Function(BuildContext, String?)?
      fileInsertContenutiADATextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Inser CustomBOT)] action in Button widget.
  ApiCallResponse? responseInsertCustomBOT;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titoloServizioFocusNode?.dispose();
    titoloServizioTextController?.dispose();

    contenutoFocusNode?.dispose();
    contenutoTextController?.dispose();

    prezzoFocusNode?.dispose();
    prezzoTextController?.dispose();

    tempoServizioFocusNode?.dispose();
    tempoServizioTextController?.dispose();

    scadenzaFocusNode?.dispose();
    scadenzaTextController?.dispose();

    preavvisoAnnullamentoFocusNode?.dispose();
    preavvisoAnnullamentoTextController?.dispose();

    indirizzoSpecificoFocusNode?.dispose();
    indirizzoSpecificoTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();

    mailFocusNode?.dispose();
    mailTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    fileInsertContenutiADAFocusNode?.dispose();
    fileInsertContenutiADATextController?.dispose();
  }
}
