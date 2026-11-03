import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/appbar_widget.dart';
import '/components/profile_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // Model for ProfileHeader component.
  late ProfileHeaderModel profileHeaderModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    profileHeaderModel = createModel(context, () => ProfileHeaderModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    profileHeaderModel.dispose();
  }
}
