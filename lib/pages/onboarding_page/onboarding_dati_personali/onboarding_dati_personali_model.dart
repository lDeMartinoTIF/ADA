import '/backend/api_requests/api_calls.dart';
import '/components/modals_extra/modal_onboarding_dati_personali/modal_onboarding_dati_personali_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'onboarding_dati_personali_widget.dart'
    show OnboardingDatiPersonaliWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingDatiPersonaliModel
    extends FlutterFlowModel<OnboardingDatiPersonaliWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for modal_onboarding_dati_personali component.
  late ModalOnboardingDatiPersonaliModel modalOnboardingDatiPersonaliModel;

  @override
  void initState(BuildContext context) {
    modalOnboardingDatiPersonaliModel =
        createModel(context, () => ModalOnboardingDatiPersonaliModel());
  }

  @override
  void dispose() {
    modalOnboardingDatiPersonaliModel.dispose();
  }
}
