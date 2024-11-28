import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/blank_list_component/blank_list_component_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'main_chat_a_d_a_widget.dart' show MainChatADAWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainChatADAModel extends FlutterFlowModel<MainChatADAWidget> {
  ///  Local state fields for this page.

  String? inputContent;

  dynamic chatHistory;

  DocumentReference? chatRef;

  DocumentReference? firendsList;

  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Stores action output result for [Backend Call - API (create_lingue_LINGUE_create_post)] action in IconLike widget.
  ApiCallResponse? responseFeedBack;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    webNavModel.dispose();
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
