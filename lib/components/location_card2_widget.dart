import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'location_card2_model.dart';
export 'location_card2_model.dart';

class LocationCard2Widget extends StatefulWidget {
  const LocationCard2Widget({
    super.key,
    String? name,
    bool? selected,
    String? address,
  })  : this.name = name ?? 'Downtown Hub',
        this.selected = selected ?? true,
        this.address = address ?? '124 Market St, Suite 201';

  final String name;
  final bool selected;
  final String address;

  @override
  State<LocationCard2Widget> createState() => _LocationCard2WidgetState();
}

class _LocationCard2WidgetState extends State<LocationCard2Widget> {
  late LocationCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationCard2Model());

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.selected,
              true,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).primary,
          ),
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.name,
                      'Downtown Hub',
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        if (valueOrDefault<bool>(
                          valueOrDefault<bool>(
                            widget.selected,
                            true,
                          )
                              ? true
                              : false,
                          true,
                        ))
                          Icon(
                            Icons.check_circle_rounded,
                            color: valueOrDefault<Color>(
                              valueOrDefault<bool>(
                                widget.selected,
                                true,
                              )
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            size: 20.0,
                          ),
                        if (valueOrDefault<bool>(
                          valueOrDefault<bool>(
                            widget.selected,
                            true,
                          )
                              ? false
                              : true,
                          false,
                        ))
                          Icon(
                            Icons.circle_outlined,
                            color: valueOrDefault<Color>(
                              valueOrDefault<bool>(
                                widget.selected,
                                true,
                              )
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            size: 20.0,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                valueOrDefault<String>(
                  widget.address,
                  '124 Market St, Suite 201',
                ),
                maxLines: 2,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      lineHeight: 1.4,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
