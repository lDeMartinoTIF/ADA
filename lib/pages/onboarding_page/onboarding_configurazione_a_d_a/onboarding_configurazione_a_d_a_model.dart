import '/backend/api_requests/api_calls.dart';
import '/components/modals_extra/modal_onboarding_configurazione_a_d_a/modal_onboarding_configurazione_a_d_a_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'onboarding_configurazione_a_d_a_widget.dart'
    show OnboardingConfigurazioneADAWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingConfigurazioneADAModel
    extends FlutterFlowModel<OnboardingConfigurazioneADAWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for modal_onboarding_configurazione_ADA component.
  late ModalOnboardingConfigurazioneADAModel
      modalOnboardingConfigurazioneADAModel;

  @override
  void initState(BuildContext context) {
    modalOnboardingConfigurazioneADAModel =
        createModel(context, () => ModalOnboardingConfigurazioneADAModel());
  }

  @override
  void dispose() {
    modalOnboardingConfigurazioneADAModel.dispose();
  }
}
