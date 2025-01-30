import '/components/modal_sections/tipi_servizio_details_main/tipi_servizio_details_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'modal_tipi_servizio_widget.dart' show ModalTipiServizioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalTipiServizioModel extends FlutterFlowModel<ModalTipiServizioWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  dynamic jsonTipiServizio;

  ///  State fields for stateful widgets in this component.

  // Model for TipiServizio_Details_main component.
  late TipiServizioDetailsMainModel tipiServizioDetailsMainModel;

  @override
  void initState(BuildContext context) {
    tipiServizioDetailsMainModel =
        createModel(context, () => TipiServizioDetailsMainModel());
  }

  @override
  void dispose() {
    tipiServizioDetailsMainModel.dispose();
  }
}
