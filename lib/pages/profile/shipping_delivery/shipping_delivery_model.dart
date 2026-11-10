import '/components/bullet_item2_widget.dart';
import '/components/contact_widget.dart';
import '/components/policy_section2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'shipping_delivery_widget.dart' show ShippingDeliveryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShippingDeliveryModel extends FlutterFlowModel<ShippingDeliveryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BulletItem.
  late BulletItem2Model bulletItemModel1;
  // Model for BulletItem.
  late BulletItem2Model bulletItemModel2;
  // Model for BulletItem.
  late BulletItem2Model bulletItemModel3;
  // Model for BulletItem.
  late BulletItem2Model bulletItemModel4;
  // Model for BulletItem.
  late BulletItem2Model bulletItemModel5;
  // Model for BulletItem.
  late BulletItem2Model bulletItemModel6;
  // Model for PolicySection.
  late PolicySection2Model policySectionModel;
  // Model for CONTACT component.
  late ContactModel contactModel;

  @override
  void initState(BuildContext context) {
    bulletItemModel1 = createModel(context, () => BulletItem2Model());
    bulletItemModel2 = createModel(context, () => BulletItem2Model());
    bulletItemModel3 = createModel(context, () => BulletItem2Model());
    bulletItemModel4 = createModel(context, () => BulletItem2Model());
    bulletItemModel5 = createModel(context, () => BulletItem2Model());
    bulletItemModel6 = createModel(context, () => BulletItem2Model());
    policySectionModel = createModel(context, () => PolicySection2Model());
    contactModel = createModel(context, () => ContactModel());
  }

  @override
  void dispose() {
    bulletItemModel1.dispose();
    bulletItemModel2.dispose();
    bulletItemModel3.dispose();
    bulletItemModel4.dispose();
    bulletItemModel5.dispose();
    bulletItemModel6.dispose();
    policySectionModel.dispose();
    contactModel.dispose();
  }
}
