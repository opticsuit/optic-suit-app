import '/components/offer_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'offers_wallet_widget.dart' show OffersWalletWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OffersWalletModel extends FlutterFlowModel<OffersWalletWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for OfferCard.
  late OfferCardModel offerCardModel1;
  // Model for OfferCard.
  late OfferCardModel offerCardModel2;
  // Model for OfferCard.
  late OfferCardModel offerCardModel3;

  @override
  void initState(BuildContext context) {
    offerCardModel1 = createModel(context, () => OfferCardModel());
    offerCardModel2 = createModel(context, () => OfferCardModel());
    offerCardModel3 = createModel(context, () => OfferCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    offerCardModel1.dispose();
    offerCardModel2.dispose();
    offerCardModel3.dispose();
  }
}
