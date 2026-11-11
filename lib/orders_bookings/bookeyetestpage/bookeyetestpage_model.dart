import '/components/summary_row2_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'bookeyetestpage_widget.dart' show BookeyetestpageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookeyetestpageModel extends FlutterFlowModel<BookeyetestpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Enteryourfullname widget.
  FocusNode? enteryourfullnameFocusNode;
  TextEditingController? enteryourfullnameTextController;
  String? Function(BuildContext, String?)?
      enteryourfullnameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for SummaryRow.
  late SummaryRow2Model summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRow2Model summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRow2Model summaryRowModel3;

  @override
  void initState(BuildContext context) {
    summaryRowModel1 = createModel(context, () => SummaryRow2Model());
    summaryRowModel2 = createModel(context, () => SummaryRow2Model());
    summaryRowModel3 = createModel(context, () => SummaryRow2Model());
  }

  @override
  void dispose() {
    enteryourfullnameFocusNode?.dispose();
    enteryourfullnameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
  }
}
