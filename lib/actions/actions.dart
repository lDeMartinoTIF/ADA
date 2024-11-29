import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/components/modal_sections/modal_tipi_servizio/modal_tipi_servizio_widget.dart';
import '/components/modal_sections/modal_tipo_servizio/modal_tipo_servizio_widget.dart';
import '/components/modal_sections/modal_user/modal_user_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future openUserDetails(BuildContext context) async {
  if (MediaQuery.sizeOf(context).width <= 991.0) {
    context.pushNamed(
      'userDetails',
      queryParameters: {
        'showBack': serializeParam(
          true,
          ParamType.bool,
        ),
      }.withoutNulls,
    );
  } else {
    await showDialog(
      barrierColor: FlutterFlowTheme.of(context).accent4,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: ModalUserWidget(),
        );
      },
    );
  }
}

Future openDetailTipoServizio(
  BuildContext context, {
  required dynamic jsonTipoServizio,
}) async {
  if (MediaQuery.sizeOf(context).width <= 991.0) {
    context.pushNamed(
      'TipoServizioDetails',
      queryParameters: {
        'showBack': serializeParam(
          false,
          ParamType.bool,
        ),
        'jspTipoServizio': serializeParam(
          jsonTipoServizio,
          ParamType.JSON,
        ),
      }.withoutNulls,
    );
  } else {
    await showDialog(
      barrierColor: FlutterFlowTheme.of(context).accent4,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: ModalTipoServizioWidget(
            jsonTipoServizio: jsonTipoServizio!,
          ),
        );
      },
    );
  }
}

Future openDetailTipiServizio(
  BuildContext context, {
  required dynamic jsonTipiServizio,
}) async {
  if (MediaQuery.sizeOf(context).width <= 991.0) {
    context.pushNamed(
      'TipiServizioDetails',
      queryParameters: {
        'jspTipIServizio': serializeParam(
          jsonTipiServizio,
          ParamType.JSON,
        ),
      }.withoutNulls,
    );
  } else {
    await showDialog(
      barrierColor: FlutterFlowTheme.of(context).accent4,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: ModalTipiServizioWidget(
            jsonTipiServizio: jsonTipiServizio!,
          ),
        );
      },
    );
  }
}
