import '/backend/api_requests/api_calls.dart';
import '/components/modals_extra/modal_onboarding_azienda/modal_onboarding_azienda_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding_azienda_model.dart';
export 'onboarding_azienda_model.dart';

class OnboardingAziendaWidget extends StatefulWidget {
  const OnboardingAziendaWidget({super.key});

  @override
  State<OnboardingAziendaWidget> createState() =>
      _OnboardingAziendaWidgetState();
}

class _OnboardingAziendaWidgetState extends State<OnboardingAziendaWidget> {
  late OnboardingAziendaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingAziendaModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'onboarding_azienda'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: FFAppState().comuni(
        requestFn: () => ComuniITAGroup.comuniCall.call(),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final onboardingAziendaComuniResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).accent1,
                          FlutterFlowTheme.of(context).primary
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, -1.0),
                        end: AlignmentDirectional(-1.0, 1.0),
                      ),
                    ),
                    child: wrapWithModel(
                      model: _model.modalOnboardingAziendaModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ModalOnboardingAziendaWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
