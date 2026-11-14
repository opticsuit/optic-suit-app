import '/backend/api_requests/api_calls.dart';
import '/components/custom_appbar_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  Local state fields for this page.

  bool? signingIn = false;

  String? loginToken = '';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  late FocusNode passwordPasswordVisibilityFocusNode;
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Passsword is required.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (WooLogin)] action in Button widget.
  ApiCallResponse? wooLoginDslRes0;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordPasswordVisibilityFocusNode = FocusNode();
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
    passwordPasswordVisibilityFocusNode.dispose();
  }

  /// Action blocks.
  Future storeLoginToken(BuildContext context) async {
    bool? tokenStored;

    logFirebaseEvent('storeLoginToken_custom_action');
    tokenStored = await actions.storeWooJwt(
      context,
      loginToken,
    );
    if (tokenStored!) {
      logFirebaseEvent('storeLoginToken_navigate_to');

      context.pushNamed(OpticSuitHomePageWidget.routeName);
    } else {
      logFirebaseEvent('storeLoginToken_update_page_state');
      signingIn = false;
      updatePage(() {});
      logFirebaseEvent('storeLoginToken_show_snack_bar');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Unable to securely save your login. Please try again.',
            style: TextStyle(),
          ),
          duration: Duration(milliseconds: 4000),
        ),
      );
    }
  }
}
