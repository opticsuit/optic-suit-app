import '/components/form_label_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'personal_information_edit_page_widget.dart'
    show PersonalInformationEditPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInformationEditPageModel
    extends FlutterFlowModel<PersonalInformationEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for FormLabel.
  late FormLabelModel formLabelModel3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for FormLabel.
  late FormLabelModel formLabelModel4;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabelModel());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    formLabelModel4 = createModel(context, () => FormLabelModel());
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    formLabelModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    formLabelModel3.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    formLabelModel4.dispose();
  }
}
