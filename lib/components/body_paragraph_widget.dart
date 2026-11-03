import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'body_paragraph_model.dart';
export 'body_paragraph_model.dart';

class BodyParagraphWidget extends StatefulWidget {
  const BodyParagraphWidget({
    super.key,
    String? content,
  }) : this.content = content ??
            'These Terms & Conditions govern your use of the Optic Suit website and app and the purchase of our products. Optic Suit may update these terms from time to time. Updated terms will be published on our website or app with a revised date. Your rights under applicable law will not be affected by these updates.';

  final String content;

  @override
  State<BodyParagraphWidget> createState() => _BodyParagraphWidgetState();
}

class _BodyParagraphWidgetState extends State<BodyParagraphWidget> {
  late BodyParagraphModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BodyParagraphModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget!.content,
        'These Terms & Conditions govern your use of the Optic Suit website and app and the purchase of our products. Optic Suit may update these terms from time to time. Updated terms will be published on our website or app with a revised date. Your rights under applicable law will not be affected by these updates.',
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            font: GoogleFonts.poppins(
              fontWeight: FontWeight.normal,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
            color: Color(0xFF4B5563),
            fontSize: 14.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.normal,
            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            lineHeight: 1.5,
          ),
    );
  }
}
