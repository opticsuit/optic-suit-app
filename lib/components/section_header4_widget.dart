import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_header4_model.dart';
export 'section_header4_model.dart';

class SectionHeader4Widget extends StatefulWidget {
  const SectionHeader4Widget({
    super.key,
    String? title,
  }) : this.title = title ?? '1. General';

  final String title;

  @override
  State<SectionHeader4Widget> createState() => _SectionHeader4WidgetState();
}

class _SectionHeader4WidgetState extends State<SectionHeader4Widget> {
  late SectionHeader4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionHeader4Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget!.title,
            '1. General',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF1F3A87),
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        Divider(
          height: 16.0,
          thickness: 1.0,
          indent: 0.0,
          endIndent: 0.0,
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
