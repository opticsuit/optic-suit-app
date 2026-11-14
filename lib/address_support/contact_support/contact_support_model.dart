import '/components/contact_row_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'contact_support_widget.dart' show ContactSupportWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
