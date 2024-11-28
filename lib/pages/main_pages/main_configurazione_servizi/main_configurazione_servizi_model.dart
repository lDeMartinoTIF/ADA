import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/dropdown_edit_delete/dropdown_edit_delete_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/components/modals_extra/modal_create_tipi_servizio/modal_create_tipi_servizio_widget.dart';
import '/components/modals_extra/modal_create_tipo_servizio/modal_create_tipo_servizio_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/actions/actions.dart' as action_blocks;
import 'main_configurazione_servizi_widget.dart'
    show MainConfigurazioneServiziWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainConfigurazioneServiziModel
    extends FlutterFlowModel<MainConfigurazioneServiziWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (Delete Tipo Servizio)] action in Icon widget.
  ApiCallResponse? resultDeleteTipoServizio;
  // Stores action output result for [Backend Call - API (Delete Tipo Servizio)] action in Icon widget.
  ApiCallResponse? resultDeleteTipiServizio;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    tabBarController?.dispose();
  }
}
