import '/components/modal_sections/tipi_servizio_details_main/tipi_servizio_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tipi_servizio_details_widget.dart' show TipiServizioDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TipiServizioDetailsModel
    extends FlutterFlowModel<TipiServizioDetailsWidget> {
  ///  State fields for stateful widgets in this page.

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
