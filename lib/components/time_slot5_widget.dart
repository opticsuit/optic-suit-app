import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'time_slot5_model.dart';
export 'time_slot5_model.dart';

class TimeSlot5Widget extends StatefulWidget {
  const TimeSlot5Widget({
    super.key,
    bool? selected,
    String? time,
  })  : this.selected = selected ?? true,
        this.time = time ?? '10 AM';

  final bool selected;
  final String time;

  @override
  State<TimeSlot5Widget> createState() => _TimeSlot5WidgetState();
}

class _TimeSlot5WidgetState extends State<TimeSlot5Widget> {
  late TimeSlot5Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeSlot5Model());

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
      height: 48.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget.selected,
            true,
          )
              ? Color(0xFF1F3A87)
              : FlutterFlowTheme.of(context).secondaryBackground,
          Color(0xFF1F3A87),
        ),
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.selected,
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
      child: Text(
        valueOrDefault<String>(
          widget.time,
          '10 AM',
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              color: valueOrDefault<Color>(
                valueOrDefault<bool>(
                  widget.selected,
                  true,
                )
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primaryText,
                Colors.white,
              ),
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              lineHeight: 1.4,
            ),
      ),
    );
  }
}
