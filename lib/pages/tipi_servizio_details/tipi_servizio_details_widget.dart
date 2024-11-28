import '/components/modal_sections/tipo_servizio_details_main/tipo_servizio_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tipi_servizio_details_model.dart';
export 'tipi_servizio_details_model.dart';

class TipiServizioDetailsWidget extends StatefulWidget {
  const TipiServizioDetailsWidget({
    super.key,
    bool? showBack,
    required this.jspTipoServizio,
  }) : this.showBack = showBack ?? true;

  final bool showBack;
  final dynamic jspTipoServizio;

  @override
  State<TipiServizioDetailsWidget> createState() =>
      _TipiServizioDetailsWidgetState();
}

class _TipiServizioDetailsWidgetState extends State<TipiServizioDetailsWidget> {
  late TipiServizioDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipiServizioDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TipiServizioDetails'});
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
      body: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: wrapWithModel(
          model: _model.tipoServizioDetailsMainModel,
          updateCallback: () => safeSetState(() {}),
          child: TipoServizioDetailsMainWidget(
            showBack: true,
            jsonTipoServizio: widget!.jspTipoServizio!,
          ),
        ),
      ),
    );
  }
}
