import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bullet_item_model.dart';
export 'bullet_item_model.dart';

class BulletItemWidget extends StatefulWidget {
  const BulletItemWidget({
    super.key,
    String? content,
  }) : this.content = content ??
            'Cash on Delivery (COD) is available only for frame-only orders, subject to delivery serviceability and availability.';

  final String content;

  @override
  State<BulletItemWidget> createState() => _BulletItemWidgetState();
}

class _BulletItemWidgetState extends State<BulletItemWidget> {
  late BulletItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BulletItemModel());

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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
          child: Container(
            child: Container(
              width: 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: Color(0xFF1F3A87),
                borderRadius: BorderRadius.circular(9999.0),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            valueOrDefault<String>(
              widget.content,
              'Cash on Delivery (COD) is available only for frame-only orders, subject to delivery serviceability and availability.',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFF4B5563),
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.5,
                ),
          ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
