import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_item_model.dart';
export 'date_item_model.dart';

class DateItemWidget extends StatefulWidget {
  const DateItemWidget({
    super.key,
    bool? selected,
    String? date,
    String? day,
  })  : this.selected = selected ?? true,
        this.date = date ?? '05',
        this.day = day ?? 'Mon';

  final bool selected;
  final String date;
  final String day;

  @override
  State<DateItemWidget> createState() => _DateItemWidgetState();
}

class _DateItemWidgetState extends State<DateItemWidget> {
  late DateItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateItemModel());

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
      width: 64.0,
      height: 72.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget!.selected,
            true,
          )
              ? Color(0xFF1F3A87)
              : FlutterFlowTheme.of(context).secondaryBackground,
          Color(0xFF1F3A87),
        ),
        borderRadius: BorderRadius.circular(14.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget!.selected,
              true,
            )
                ? Color(0xFF1F3A87)
                : FlutterFlowTheme.of(context).alternate,
            Color(0xFF1F3A87),
          ),
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            valueOrDefault<String>(
              widget!.date,
              '05',
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget!.selected,
                      true,
                    )
                        ? Colors.white
                        : FlutterFlowTheme.of(context).primaryText,
                    Colors.white,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.day,
              'Mon',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget!.selected,
                      true,
                    )
                        ? Color(0xB3FFFFFF)
                        : FlutterFlowTheme.of(context).secondaryText,
                    Color(0xB3FFFFFF),
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(height: 4.0)),
      ),
    );
  }
}
