import '/components/status_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_card_widget.dart' show OrderCardWidget;
import 'package:flutter/material.dart';

class OrderCardModel extends FlutterFlowModel<OrderCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusBadge.
  late StatusBadgeModel statusBadgeModel;

  @override
  void initState(BuildContext context) {
    statusBadgeModel = createModel(context, () => StatusBadgeModel());
  }

  @override
  void dispose() {
    statusBadgeModel.dispose();
  }
}
