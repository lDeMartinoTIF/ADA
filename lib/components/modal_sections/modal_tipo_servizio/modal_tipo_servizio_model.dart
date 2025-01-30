import '/components/modal_sections/tipo_servizio_details_main/tipo_servizio_details_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_tipo_servizio_widget.dart' show ModalTipoServizioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalTipoServizioModel extends FlutterFlowModel<ModalTipoServizioWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  dynamic jsonTipoServizio;

  ///  State fields for stateful widgets in this component.

  // Model for TipoServizio_Details_main component.
  late TipoServizioDetailsMainModel tipoServizioDetailsMainModel;

  @override
  void initState(BuildContext context) {
    tipoServizioDetailsMainModel =
        createModel(context, () => TipoServizioDetailsMainModel());
  }

  @override
  void dispose() {
    tipoServizioDetailsMainModel.dispose();
  }
}
