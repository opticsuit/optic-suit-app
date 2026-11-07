import '/components/contact_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_support_widget.dart' show ContactSupportWidget;
import 'package:flutter/material.dart';

class ContactSupportModel extends FlutterFlowModel<ContactSupportWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ContactRow.
  late ContactRowModel contactRowModel1;
  // Model for ContactRow.
  late ContactRowModel contactRowModel2;
  // Model for ContactRow.
  late ContactRowModel contactRowModel3;

  @override
  void initState(BuildContext context) {
    contactRowModel1 = createModel(context, () => ContactRowModel());
    contactRowModel2 = createModel(context, () => ContactRowModel());
    contactRowModel3 = createModel(context, () => ContactRowModel());
  }

  @override
  void dispose() {
    contactRowModel1.dispose();
    contactRowModel2.dispose();
    contactRowModel3.dispose();
  }
}
