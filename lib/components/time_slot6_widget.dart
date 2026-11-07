import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'time_slot6_model.dart';
export 'time_slot6_model.dart';

class TimeSlot6Widget extends StatefulWidget {
  const TimeSlot6Widget({
    super.key,
    bool? disabled,
    bool? selected,
    String? time,
  })  : this.disabled = disabled ?? false,
        this.selected = selected ?? false,
        this.time = time ?? '10:00 AM';

  final bool disabled;
  final bool selected;
  final String time;

  @override
  State<TimeSlot6Widget> createState() => _TimeSlot6WidgetState();
}

class _TimeSlot6WidgetState extends State<TimeSlot6Widget> {
  late TimeSlot6Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeSlot6Model());

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
      height: 44.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if (valueOrDefault<bool>(
              widget.disabled,
              false,
            )) {
              return Color(0xFFF1F5F9);
            } else if (valueOrDefault<bool>(
              widget.selected,
              false,
            )) {
              return Color(0xFF1F3A87);
            } else {
              return FlutterFlowTheme.of(context).secondaryBackground;
            }
          }(),
          Color(0x00000000),
        ),
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.selected,
              false,
            )
                ? Color(0xFF1F3A87)
                : FlutterFlowTheme.of(context).alternate,
            Color(0x00000000),
          ),
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        valueOrDefault<String>(
          widget.time,
          '10:00 AM',
        ),
        style: FlutterFlowTheme.of(context).bodySmall.override(
              font: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
              ),
              color: valueOrDefault<Color>(
                () {
                  if (valueOrDefault<bool>(
                    widget.disabled,
                    false,
                  )) {
                    return Color(0xFF9CA3AF);
                  } else if (valueOrDefault<bool>(
                    widget.selected,
                    false,
                  )) {
                    return Colors.white;
                  } else {
                    return FlutterFlowTheme.of(context).primaryText;
                  }
                }(),
                Color(0x00000000),
              ),
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
              fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
              lineHeight: 1.4,
            ),
      ),
    );
  }
}
