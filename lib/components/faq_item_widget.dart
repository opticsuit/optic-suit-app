import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'faq_item_model.dart';
export 'faq_item_model.dart';

class FaqItemWidget extends StatefulWidget {
  const FaqItemWidget({
    super.key,
    String? question,
    bool? isOpen,
    String? answer,
  })  : this.question = question ?? 'How can I track my order?',
        this.isOpen = isOpen ?? true,
        this.answer = answer ??
            'You can track your order from My Orders → Select Order → Track Order. View your current order status and delivery updates there.';

  final String question;
  final bool isOpen;
  final String answer;

  @override
  State<FaqItemWidget> createState() => _FaqItemWidgetState();
}

class _FaqItemWidgetState extends State<FaqItemWidget> {
  late FaqItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqItemModel());

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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x10000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(14.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0xFFE5E7EB),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      valueOrDefault<String>(
                        widget!.question,
                        'How can I track my order?',
                      ),
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF333333),
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                      overflow: TextOverflow.ellipsis,
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
                            widget!.isOpen,
                            true,
                          )
                              ? true
                              : false,
                          true,
                        ))
                          Icon(
                            Icons.expand_less_rounded,
                            color: Color(0xFF1F3A87),
                            size: 20.0,
                          ),
                        if (valueOrDefault<bool>(
                          valueOrDefault<bool>(
                            widget!.isOpen,
                            true,
                          )
                              ? false
                              : true,
                          false,
                        ))
                          Icon(
                            Icons.expand_more_rounded,
                            color: Color(0xFF1F3A87),
                            size: 20.0,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              if (valueOrDefault<bool>(
                widget!.isOpen,
                true,
              ))
                Container(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                    child: Container(
                      child: Visibility(
                        visible: widget!.isOpen,
                        child: Text(
                          valueOrDefault<String>(
                            widget!.answer,
                            'You can track your order from My Orders → Select Order → Track Order. View your current order status and delivery updates there.',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF333333),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
