import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_header3_model.dart';
export 'section_header3_model.dart';

class SectionHeader3Widget extends StatefulWidget {
  const SectionHeader3Widget({
    super.key,
    String? title,
  }) : this.title = title ?? 'ACCOUNT SETTINGS';

  final String title;

  @override
  State<SectionHeader3Widget> createState() => _SectionHeader3WidgetState();
}

class _SectionHeader3WidgetState extends State<SectionHeader3Widget> {
  late SectionHeader3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionHeader3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget!.title,
              'ACCOUNT SETTINGS',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFF333333),
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
        ),
      ),
    );
  }
}
