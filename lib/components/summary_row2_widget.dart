import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'summary_row2_model.dart';
export 'summary_row2_model.dart';

class SummaryRow2Widget extends StatefulWidget {
  const SummaryRow2Widget({
    super.key,
    String? label,
    String? value,
  })  : this.label = label ?? 'Store',
        this.value = value ?? 'Optic Suit – Kozhikode';

  final String label;
  final String value;

  @override
  State<SummaryRow2Widget> createState() => _SummaryRow2WidgetState();
}

class _SummaryRow2WidgetState extends State<SummaryRow2Widget> {
  late SummaryRow2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryRow2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          valueOrDefault<String>(
            widget!.label,
            'Store',
          ),
          style: FlutterFlowTheme.of(context).bodySmall.override(
                font: GoogleFonts.inter(
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.value,
            'Optic Suit – Kozhikode',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF1F3A87),
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
