import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_logo_compact_model.dart';
export 'main_logo_compact_model.dart';

class MainLogoCompactWidget extends StatefulWidget {
  const MainLogoCompactWidget({super.key});

  @override
  State<MainLogoCompactWidget> createState() => _MainLogoCompactWidgetState();
}

class _MainLogoCompactWidgetState extends State<MainLogoCompactWidget> {
  late MainLogoCompactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoCompactModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/images/Logo-vmake_verticale.png'
          : 'assets/images/Logo-vmake_verticale.png',
      fit: BoxFit.fitHeight,
    );
  }
}
