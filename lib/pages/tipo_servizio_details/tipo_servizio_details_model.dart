import '/components/modal_sections/tipo_servizio_details_main/tipo_servizio_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tipo_servizio_details_widget.dart' show TipoServizioDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TipoServizioDetailsModel
    extends FlutterFlowModel<TipoServizioDetailsWidget> {
  ///  State fields for stateful widgets in this page.

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
