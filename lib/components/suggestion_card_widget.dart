import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'suggestion_card_model.dart';
export 'suggestion_card_model.dart';

class SuggestionCardWidget extends StatefulWidget {
  const SuggestionCardWidget({
    super.key,
    String? imgDesc,
    String? brand,
    String? name,
    String? price,
  })  : this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/Round%20tortoise%20shell%20glasses',
        this.brand = brand ?? 'ALBERT ITALY',
        this.name = name ?? 'Classic Round Frame',
        this.price = price ?? '₹2,499';

  final String imgDesc;
  final String brand;
  final String name;
  final String price;

  @override
  State<SuggestionCardWidget> createState() => _SuggestionCardWidgetState();
}

class _SuggestionCardWidgetState extends State<SuggestionCardWidget> {
  late SuggestionCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuggestionCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        width: 160.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 110.0,
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F8),
                shape: BoxShape.rectangle,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 0),
                    fadeOutDuration: Duration(milliseconds: 0),
                    imageUrl: valueOrDefault<String>(
                      widget!.imgDesc,
                      'https://dimg.dreamflow.cloud/v1/image/Round%20tortoise%20shell%20glasses',
                    ),
                    width: 120.0,
                    fit: BoxFit.contain,
                    alignment: Alignment(0.0, 0.0),
                  ),
                  Icon(
                    Icons.favorite,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.brand,
                      'ALBERT ITALY',
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                          color: Color(0xFF1F3A87),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget!.name,
                      'Classic Round Frame',
                    ),
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                          lineHeight: 1.4,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget!.price,
                      '₹2,499',
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Color(0xFF1F3A87),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
