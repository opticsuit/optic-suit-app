import '/components/appbar_widget.dart';
import '/components/profile_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

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
