import '/components/modal_sections/contenuti_a_d_a_details_main/contenuti_a_d_a_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'contenuti_a_d_a_details_widget.dart' show ContenutiADADetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContenutiADADetailsModel
    extends FlutterFlowModel<ContenutiADADetailsWidget> {
  ///  State fields for stateful widgets in this page.

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
