import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_badge_model.dart';
export 'status_badge_model.dart';

class StatusBadgeWidget extends StatefulWidget {
  const StatusBadgeWidget({
    super.key,
    String? status,
  }) : this.status = status ?? '';

  final String status;

  @override
  State<StatusBadgeWidget> createState() => _StatusBadgeWidgetState();
}

class _StatusBadgeWidgetState extends State<StatusBadgeWidget> {
  late StatusBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBadgeModel());

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
      height: 28.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if (widget!.status == 'Delivered') {
              return Color(0xFFECFDF5);
            } else if (widget!.status == 'Shipped') {
              return Color(0xFFEFF6FF);
            } else if (widget!.status == 'Processing') {
              return Color(0xFFFFF7ED);
            } else {
              return Color(0xFFFEF2F2);
            }
          }(),
          Color(0x00000000),
        ),
        borderRadius: BorderRadius.circular(14.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Container(
          child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      () {
                        if (widget!.status == 'Delivered') {
                          return Color(0xFF16A34A);
                        } else if (widget!.status == 'Shipped') {
                          return Color(0xFF2563EB);
                        } else if (widget!.status == 'Processing') {
                          return Color(0xFFEA580C);
                        } else {
                          return Color(0xFFDC2626);
                        }
                      }(),
                      Color(0x00000000),
                    ),
                    borderRadius: BorderRadius.circular(9999.0),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Text(
                  widget!.status,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: valueOrDefault<Color>(
                          () {
                            if (widget!.status == 'Delivered') {
                              return Color(0xFF16A34A);
                            } else if (widget!.status == 'Shipped') {
                              return Color(0xFF2563EB);
                            } else if (widget!.status == 'Processing') {
                              return Color(0xFFEA580C);
                            } else {
                              return Color(0xFFDC2626);
                            }
                          }(),
                          Color(0x00000000),
                        ),
                        fontSize: 11.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
              ].divide(SizedBox(width: 4.0)),
            ),
          ),
        ),
      ),
    );
  }
}
