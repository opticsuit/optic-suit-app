import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'select_lens_page_widget.dart' show SelectLensPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectLensPageModel extends FlutterFlowModel<SelectLensPageWidget> {
  ///  Local state fields for this page.

  int? currentStep = 1;

  String? selectedLensType = '';

  bool? canContinue = false;

  String? selectedPackage = 'Anti Reflection';

  String? selectedPrescription = 'Enter Power';

  bool? prescriptionAcknowledged = false;

  String? rightSphere = '';

  String? leftSphere = '';

  String? rightCylinder = '';

  String? leftCylinder = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for rightSphereDropdown widget.
  String? rightSphereDropdownValue;
  FormFieldController<String>? rightSphereDropdownValueController;
  // State field(s) for leftSphereDropdown widget.
  String? leftSphereDropdownValue;
  FormFieldController<String>? leftSphereDropdownValueController;
  // State field(s) for rightCylinderDropdown widget.
  String? rightCylinderDropdownValue;
  FormFieldController<String>? rightCylinderDropdownValueController;
  // State field(s) for leftCylinderDropdown widget.
  String? leftCylinderDropdownValue;
  FormFieldController<String>? leftCylinderDropdownValueController;
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

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
