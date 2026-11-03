import '/components/field_label_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_field2_model.dart';
export 'form_field2_model.dart';

class FormField2Widget extends StatefulWidget {
  const FormField2Widget({
    super.key,
    String? label,
    String? hint,
    String? value,
  })  : this.label = label ?? 'Full Name *',
        this.hint = hint ?? 'Enter full name',
        this.value = value ?? '';

  final String label;
  final String hint;
  final String value;

  @override
  State<FormField2Widget> createState() => _FormField2WidgetState();
}

class _FormField2WidgetState extends State<FormField2Widget> {
  late FormField2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormField2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        wrapWithModel(
          model: _model.fieldLabelModel,
          updateCallback: () => safeSetState(() {}),
          child: FieldLabelWidget(),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
