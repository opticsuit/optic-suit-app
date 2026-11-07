import '/components/address_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'saved_address_widget.dart' show SavedAddressWidget;
import 'package:flutter/material.dart';

class SavedAddressModel extends FlutterFlowModel<SavedAddressWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AddressCard.
  late AddressCardModel addressCardModel1;
  // Model for AddressCard.
  late AddressCardModel addressCardModel2;
  // Model for AddressCard component.
  late AddressCardModel addressCardModel3;

  @override
  void initState(BuildContext context) {
    addressCardModel1 = createModel(context, () => AddressCardModel());
    addressCardModel2 = createModel(context, () => AddressCardModel());
    addressCardModel3 = createModel(context, () => AddressCardModel());
  }

  @override
  void dispose() {
    addressCardModel1.dispose();
    addressCardModel2.dispose();
    addressCardModel3.dispose();
  }
}
