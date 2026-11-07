import '/components/field_label_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_field2_widget.dart' show FormField2Widget;
import 'package:flutter/material.dart';

class FormField2Model extends FlutterFlowModel<FormField2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for FieldLabel component.
  late FieldLabelModel fieldLabelModel;

  @override
  void initState(BuildContext context) {
    fieldLabelModel = createModel(context, () => FieldLabelModel());
  }

  @override
  void dispose() {
    fieldLabelModel.dispose();
  }
}
