import '/components/modal_sections/contenuti_a_d_a_details_main/contenuti_a_d_a_details_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'modal_contenuti_a_d_a_widget.dart' show ModalContenutiADAWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalContenutiADAModel extends FlutterFlowModel<ModalContenutiADAWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  dynamic jsonTipiServizio;

  ///  State fields for stateful widgets in this component.

  // Model for ContenutiADA_Details_main component.
  late ContenutiADADetailsMainModel contenutiADADetailsMainModel;

  @override
  void initState(BuildContext context) {
    contenutiADADetailsMainModel =
        createModel(context, () => ContenutiADADetailsMainModel());
  }

  @override
  void dispose() {
    contenutiADADetailsMainModel.dispose();
  }
}
