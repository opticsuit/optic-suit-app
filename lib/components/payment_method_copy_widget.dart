import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_method_copy_model.dart';
export 'payment_method_copy_model.dart';

class PaymentMethodCopyWidget extends StatefulWidget {
  const PaymentMethodCopyWidget({
    super.key,
    bool? selected,
    this.icon,
    String? title,
    String? subtitle,
  })  : this.selected = selected ?? true,
        this.title = title ?? 'Apple Pay',
        this.subtitle = subtitle ?? 'Default Method';

  final bool selected;
  final Widget? icon;
  final String title;
  final String subtitle;

  @override
  State<PaymentMethodCopyWidget> createState() =>
      _PaymentMethodCopyWidgetState();
}

class _PaymentMethodCopyWidgetState extends State<PaymentMethodCopyWidget> {
  late PaymentMethodCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodCopyModel());

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
              widget!.selected,
              true,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).primary,
          ),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget!.selected,
                      true,
                    )
                        ? Color(0x1A86C144)
                        : FlutterFlowTheme.of(context).secondaryBackground,
                    Color(0x1A86C144),
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: widget!.icon!,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.title,
                        'Apple Pay',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.subtitle,
                        'Default Method',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              Container(
                width: 24.0,
                height: 24.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget!.selected,
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
                            widget!.selected,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        size: 24.0,
                      ),
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget!.selected,
                        true,
                      )
                          ? false
                          : true,
                      false,
                    ))
                      Icon(
                        Icons.radio_button_unchecked_rounded,
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget!.selected,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        size: 24.0,
                      ),
                  ],
                ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
