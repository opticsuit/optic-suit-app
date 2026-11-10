import '/components/filter_chip2_widget.dart';
import '/components/notification_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FilterChip.
  late FilterChip2Model filterChipModel1;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel2;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel3;
  // Model for NotificationCard.
  late NotificationCardModel notificationCardModel1;
  // Model for NotificationCard.
  late NotificationCardModel notificationCardModel2;
  // Model for NotificationCard.
  late NotificationCardModel notificationCardModel3;
  // Model for NotificationCard.
  late NotificationCardModel notificationCardModel4;
  // Model for NotificationCard.
  late NotificationCardModel notificationCardModel5;
  // Model for NotificationCard.
  late NotificationCardModel notificationCardModel6;

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChip2Model());
    filterChipModel2 = createModel(context, () => FilterChip2Model());
    filterChipModel3 = createModel(context, () => FilterChip2Model());
    notificationCardModel1 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel2 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel3 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel4 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel5 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel6 =
        createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    notificationCardModel1.dispose();
    notificationCardModel2.dispose();
    notificationCardModel3.dispose();
    notificationCardModel4.dispose();
    notificationCardModel5.dispose();
    notificationCardModel6.dispose();
  }
}
