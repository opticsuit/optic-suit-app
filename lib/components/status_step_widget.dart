import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'status_step_model.dart';
export 'status_step_model.dart';

class StatusStepWidget extends StatefulWidget {
  const StatusStepWidget({
    super.key,
    bool? active,
    bool? completed,
    bool? last,
    String? title,
    String? time,
  })  : this.active = active ?? false,
        this.completed = completed ?? true,
        this.last = last ?? false,
        this.title = title ?? 'Order Placed',
        this.time = time ?? 'Oct 24, 09:20 AM';

  final bool active;
  final bool completed;
  final bool last;
  final String title;
  final String time;

  @override
  State<StatusStepWidget> createState() => _StatusStepWidgetState();
}

class _StatusStepWidgetState extends State<StatusStepWidget> {
  late StatusStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusStepModel());

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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  () {
                    if (valueOrDefault<bool>(
                      widget.active,
                      false,
                    )) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (valueOrDefault<bool>(
                      widget.completed,
                      true,
                    )) {
                      return Color(0x3386C144);
                    } else {
                      return Color(0x00000000);
                    }
                  }(),
                  Color(0x00000000),
                ),
                borderRadius: BorderRadius.circular(9999.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 2.0,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 14.0,
                height: 14.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget.completed,
                        true,
                      )
                          ? true
                          : false,
                      true,
                    ))
                      Icon(
                        Icons.check_rounded,
                        color: valueOrDefault<Color>(
                          () {
                            if (valueOrDefault<bool>(
                              widget.active,
                              false,
                            )) {
                              return Colors.white;
                            } else if (valueOrDefault<bool>(
                              widget.completed,
                              true,
                            )) {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context).secondaryText;
                            }
                          }(),
                          Color(0x00000000),
                        ),
                        size: 14.0,
                      ),
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget.completed,
                        true,
                      )
                          ? false
                          : true,
                      false,
                    ))
                      Icon(
                        Icons.circle_rounded,
                        color: valueOrDefault<Color>(
                          () {
                            if (valueOrDefault<bool>(
                              widget.active,
                              false,
                            )) {
                              return Colors.white;
                            } else if (valueOrDefault<bool>(
                              widget.completed,
                              true,
                            )) {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context).secondaryText;
                            }
                          }(),
                          Color(0x00000000),
                        ),
                        size: 14.0,
                      ),
                  ],
                ),
              ),
            ),
            if (valueOrDefault<bool>(
              valueOrDefault<bool>(
                widget.last,
                false,
              )
                  ? false
                  : true,
              false,
            ))
              Container(
                width: 2.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget.completed,
                      true,
                    )
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    FlutterFlowTheme.of(context).primary,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
          ],
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'Order Placed',
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        valueOrDefault<bool>(
                          widget.active,
                          false,
                        )
                            ? FlutterFlowTheme.of(context).primaryText
                            : FlutterFlowTheme.of(context).secondaryText,
                        Color(0x00000000),
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              if (valueOrDefault<bool>(
                valueOrDefault<String>(
                          widget.time,
                          'Oct 24, 09:20 AM',
                        ) !=
                        ''
                    ? true
                    : false,
                true,
              ))
                Text(
                  valueOrDefault<String>(
                    widget.time,
                    'Oct 24, 09:20 AM',
                  ),
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
