import '/components/modal_sections/contenuti_a_d_a_details_main/contenuti_a_d_a_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contenuti_a_d_a_details_model.dart';
export 'contenuti_a_d_a_details_model.dart';

class ContenutiADADetailsWidget extends StatefulWidget {
  const ContenutiADADetailsWidget({
    super.key,
    bool? showBack,
    required this.jsonContenutiADA,
  }) : this.showBack = showBack ?? true;

  final bool showBack;
  final dynamic jsonContenutiADA;

  @override
  State<ContenutiADADetailsWidget> createState() =>
      _ContenutiADADetailsWidgetState();
}

class _ContenutiADADetailsWidgetState extends State<ContenutiADADetailsWidget> {
  late ContenutiADADetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContenutiADADetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ContenutiADADetails'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: wrapWithModel(
        model: _model.contenutiADADetailsMainModel,
        updateCallback: () => safeSetState(() {}),
        child: ContenutiADADetailsMainWidget(
          showBack: true,
          jsonContenutiADA: widget!.jsonContenutiADA!,
        ),
      ),
    );
  }
}
