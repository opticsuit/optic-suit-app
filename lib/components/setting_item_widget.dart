import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_item_model.dart';
export 'setting_item_model.dart';

class SettingItemWidget extends StatefulWidget {
  const SettingItemWidget({
    super.key,
    this.icon,
    Color? iconColor,
    String? title,
    Color? titleColor,
    String? subtitle,
    bool? showChevron,
  })  : this.iconColor = iconColor ?? const Color(0x00000000),
        this.title = title ?? 'Personal Information',
        this.titleColor = titleColor ?? const Color(0x00000000),
        this.subtitle = subtitle ?? 'Name, email and phone number',
        this.showChevron = showChevron ?? false;

  final Widget? icon;
  final Color iconColor;
  final String title;
  final Color titleColor;
  final String subtitle;
  final bool showChevron;

  @override
  State<SettingItemWidget> createState() => _SettingItemWidgetState();
}

class _SettingItemWidgetState extends State<SettingItemWidget> {
  late SettingItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Container(
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 8.0,
                color: Color(0x12000000),
                offset: Offset(
                  0.0,
                  3.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(14.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFFE0E0E0),
              width: 0.5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              child: Container(
                height: 52.0,
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 44.0,
                      height: 44.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F8),
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: widget!.icon!,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.title,
                              'Personal Information',
                            ),
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF222222),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget!.subtitle,
                              'Name, email and phone number',
                            ),
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF757575),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                    if (valueOrDefault<bool>(
                      widget!.showChevron,
                      false,
                    ))
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Color(0xFF9CA3AF),
                        size: 18.0,
                      ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
