import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'personal_information_edit_page_widget.dart'
    show PersonalInformationEditPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PersonalInformationEditPageModel
    extends FlutterFlowModel<PersonalInformationEditPageWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDateOfBirth;

  bool? hasSelectedDateOfBirth = false;

  String? selectedAvatar = 'male';

  bool? loadingProfile = false;

  bool? savingProfile = false;

  String? profileFullName = '';

  String? profileEmail = '';

  String? profilePhone = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getWooJwt] action in PersonalInformationEditPage widget.
  String? profileToken;
  // Stores action output result for [Backend Call - API (WooGetProfile)] action in PersonalInformationEditPage widget.
  ApiCallResponse? profileResponse;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - getWooJwt] action in Button widget.
  String? profileToken2;
  // Stores action output result for [Backend Call - API (WooUpdateProfile)] action in Button widget.
  ApiCallResponse? wooUpdateProfileDslRes0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
