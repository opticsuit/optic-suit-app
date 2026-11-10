import '/components/contact_widget.dart';
import '/components/policy_section_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'privacy_policy_widget.dart' show PrivacyPolicyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrivacyPolicyModel extends FlutterFlowModel<PrivacyPolicyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CONTACT component.
  late ContactModel contactModel;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel1;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel2;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel3;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel4;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel5;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel6;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel7;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel8;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel9;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel10;
  // Model for PolicySection.
  late PolicySectionModel policySectionModel11;

  @override
  void initState(BuildContext context) {
    contactModel = createModel(context, () => ContactModel());
    policySectionModel1 = createModel(context, () => PolicySectionModel());
    policySectionModel2 = createModel(context, () => PolicySectionModel());
    policySectionModel3 = createModel(context, () => PolicySectionModel());
    policySectionModel4 = createModel(context, () => PolicySectionModel());
    policySectionModel5 = createModel(context, () => PolicySectionModel());
    policySectionModel6 = createModel(context, () => PolicySectionModel());
    policySectionModel7 = createModel(context, () => PolicySectionModel());
    policySectionModel8 = createModel(context, () => PolicySectionModel());
    policySectionModel9 = createModel(context, () => PolicySectionModel());
    policySectionModel10 = createModel(context, () => PolicySectionModel());
    policySectionModel11 = createModel(context, () => PolicySectionModel());
  }

  @override
  void dispose() {
    contactModel.dispose();
    policySectionModel1.dispose();
    policySectionModel2.dispose();
    policySectionModel3.dispose();
    policySectionModel4.dispose();
    policySectionModel5.dispose();
    policySectionModel6.dispose();
    policySectionModel7.dispose();
    policySectionModel8.dispose();
    policySectionModel9.dispose();
    policySectionModel10.dispose();
    policySectionModel11.dispose();
  }
}
