import '/auth/firebase_auth/auth_util.dart';
import '/components/main_logo_compact/main_logo_compact_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  Local state fields for this component.

  bool? compactView = false;

  ///  State fields for stateful widgets in this component.

  // Model for main_Logo_Compact component.
  late MainLogoCompactModel mainLogoCompactModel;
  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {
    mainLogoCompactModel = createModel(context, () => MainLogoCompactModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoCompactModel.dispose();
    mainLogoSmallModel.dispose();
    expandableExpandableController.dispose();
  }
}
