import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'personal_information_edit_page_widget.dart'
    show PersonalInformationEditPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInformationEditPageModel
    extends FlutterFlowModel<PersonalInformationEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textFieldTextController1;
  String? Function(BuildContext, String?)? textFieldTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textFieldTextController2;
  String? Function(BuildContext, String?)? textFieldTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textFieldTextController3;
  String? Function(BuildContext, String?)? textFieldTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textFieldTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textFieldTextController2?.dispose();

    textFieldFocusNode3?.dispose();
    textFieldTextController3?.dispose();
  }
}
