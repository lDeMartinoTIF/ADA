import '/backend/api_requests/api_calls.dart';
import '/components/modals_extra/modal_onboarding_azienda/modal_onboarding_azienda_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'onboarding_azienda_widget.dart' show OnboardingAziendaWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingAziendaModel extends FlutterFlowModel<OnboardingAziendaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for modal_onboarding_azienda component.
  late ModalOnboardingAziendaModel modalOnboardingAziendaModel;

  @override
  void initState(BuildContext context) {
    modalOnboardingAziendaModel =
        createModel(context, () => ModalOnboardingAziendaModel());
  }

  @override
  void dispose() {
    modalOnboardingAziendaModel.dispose();
  }
}
