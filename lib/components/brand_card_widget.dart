import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'brand_card_model.dart';
export 'brand_card_model.dart';

class BrandCardWidget extends StatefulWidget {
  const BrandCardWidget({
    super.key,
    String? name,
  }) : this.name = name ?? 'Albert Italy';

  final String name;

  @override
  State<BrandCardWidget> createState() => _BrandCardWidgetState();
}

class _BrandCardWidgetState extends State<BrandCardWidget> {
  late BrandCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrandCardModel());

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
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0xFFE5E7EB),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Screenshot_2026-09-14_161611.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
