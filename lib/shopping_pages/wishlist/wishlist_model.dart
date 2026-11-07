import '/components/wishlist_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wishlist_widget.dart' show WishlistWidget;
import 'package:flutter/material.dart';

class WishlistModel extends FlutterFlowModel<WishlistWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WishlistCard component.
  late WishlistCardModel wishlistCardModel1;
  // Model for WishlistCard component.
  late WishlistCardModel wishlistCardModel2;
  // Model for WishlistCard component.
  late WishlistCardModel wishlistCardModel3;
  // Model for WishlistCard component.
  late WishlistCardModel wishlistCardModel4;

  @override
  void initState(BuildContext context) {
    wishlistCardModel1 = createModel(context, () => WishlistCardModel());
    wishlistCardModel2 = createModel(context, () => WishlistCardModel());
    wishlistCardModel3 = createModel(context, () => WishlistCardModel());
    wishlistCardModel4 = createModel(context, () => WishlistCardModel());
  }

  @override
  void dispose() {
    wishlistCardModel1.dispose();
    wishlistCardModel2.dispose();
    wishlistCardModel3.dispose();
    wishlistCardModel4.dispose();
  }
}
