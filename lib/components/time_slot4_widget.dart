import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'time_slot4_model.dart';
export 'time_slot4_model.dart';

class TimeSlot4Widget extends StatefulWidget {
  const TimeSlot4Widget({
    super.key,
    bool? selected,
    bool? available,
    String? time,
  })  : this.selected = selected ?? false,
        this.available = available ?? false,
        this.time = time ?? '09:00 AM';

  final bool selected;
  final bool available;
  final String time;

  @override
  State<TimeSlot4Widget> createState() => _TimeSlot4WidgetState();
}

class _TimeSlot4WidgetState extends State<TimeSlot4Widget> {
  late TimeSlot4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeSlot4Model());

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
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if (valueOrDefault<bool>(
              widget!.selected,
              false,
            )) {
              return FlutterFlowTheme.of(context).primary;
            } else if (valueOrDefault<bool>(
              widget!.available,
              false,
            )) {
              return FlutterFlowTheme.of(context).secondaryBackground;
            } else {
              return Color(0x00000000);
            }
          }(),
          Color(0x00000000),
        ),
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget!.selected,
              false,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            Color(0x00000000),
          ),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.time,
                '09:00 AM',
              ),
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    color: valueOrDefault<Color>(
                      () {
                        if (valueOrDefault<bool>(
                          widget!.selected,
                          false,
                        )) {
                          return Colors.white;
                        } else if (valueOrDefault<bool>(
                          widget!.available,
                          false,
                        )) {
                          return FlutterFlowTheme.of(context).primaryText;
                        } else {
                          return FlutterFlowTheme.of(context).accent3;
                        }
                      }(),
                      Color(0x00000000),
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
