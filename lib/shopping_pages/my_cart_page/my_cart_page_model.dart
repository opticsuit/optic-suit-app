import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'my_cart_page_widget.dart' show MyCartPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MyCartPageModel extends FlutterFlowModel<MyCartPageWidget> {
  ///  Local state fields for this page.

  bool? loadingCart = true;

  bool? updatingCart = false;

  bool? cartFailed = false;

  String? cartUpdateError = '';

  List<dynamic> cartItems = [];
  void addToCartItems(dynamic item) => cartItems.add(item);
  void removeFromCartItems(dynamic item) => cartItems.remove(item);
  void removeAtIndexFromCartItems(int index) => cartItems.removeAt(index);
  void insertAtIndexInCartItems(int index, dynamic item) =>
      cartItems.insert(index, item);
  void updateCartItemsAtIndex(int index, Function(dynamic) updateFn) =>
      cartItems[index] = updateFn(cartItems[index]);

  int? cartItemCount = 0;

  String? cartSubtotal = '0';

  String? cartDelivery = '0';

  String? cartDiscount = '0';

  String? cartTotal = '0';

  String? cartCurrencySymbol = '₹';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetCart)] action in MyCartPage widget.
  ApiCallResponse? getCartDslRes0;
  // State field(s) for couponCodeInput widget.
  FocusNode? couponCodeInputFocusNode;
  TextEditingController? couponCodeInputTextController;
  String? Function(BuildContext, String?)?
      couponCodeInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    couponCodeInputFocusNode?.dispose();
    couponCodeInputTextController?.dispose();
  }

  /// Action blocks.
  Future updateCartQuantity(
    BuildContext context, {
    String? itemKey,
    int? currentQuantity,
    int? delta,
  }) async {
    ApiCallResponse? updateCartItemDslRes0;
    ApiCallResponse? getCartDslRes1;

    if (((delta! < 0) && (currentQuantity! <= 1)) || updatingCart!) {
      return;
    }
    logFirebaseEvent('updateCartQuantity_update_page_state');
    updatingCart = true;
    updatePage(() {});
    logFirebaseEvent('updateCartQuantity_update_page_state');
    cartUpdateError = '';
    updatePage(() {});
    logFirebaseEvent('updateCartQuantity_backend_call');
    updateCartItemDslRes0 = await UpdateCartItemCall.call(
      key: itemKey,
      quantity: functions.wooUpdatedCartQuantity(currentQuantity!, delta!),
      cartToken: FFAppState().cartToken,
    );

    if ((updateCartItemDslRes0?.succeeded ?? true)) {
      logFirebaseEvent('updateCartQuantity_update_page_state');
      loadingCart = true;
      updatePage(() {});
      logFirebaseEvent('updateCartQuantity_backend_call');
      getCartDslRes1 = await GetCartCall.call(
        cartToken: FFAppState().cartToken,
      );

      if ((getCartDslRes1?.succeeded ?? true)) {
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartItems = GetCartCall.items(
          (getCartDslRes1?.jsonBody ?? ''),
        )!
            .toList()
            .cast<dynamic>();
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartItemCount =
            WooCartResponseStruct.maybeFromMap((getCartDslRes1?.jsonBody ?? ''))
                ?.itemsCount;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartSubtotal =
            WooCartResponseStruct.maybeFromMap((getCartDslRes1?.jsonBody ?? ''))
                ?.totals
                ?.totalItems;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartDelivery =
            WooCartResponseStruct.maybeFromMap((getCartDslRes1?.jsonBody ?? ''))
                ?.totals
                ?.totalShipping;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartDiscount =
            WooCartResponseStruct.maybeFromMap((getCartDslRes1?.jsonBody ?? ''))
                ?.totals
                ?.totalDiscount;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartTotal =
            WooCartResponseStruct.maybeFromMap((getCartDslRes1?.jsonBody ?? ''))
                ?.totals
                ?.totalPrice;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartCurrencySymbol = '₹';
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        loadingCart = false;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        updatingCart = false;
        updatePage(() {});
      } else {
        logFirebaseEvent('updateCartQuantity_update_page_state');
        loadingCart = false;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        updatingCart = false;
        updatePage(() {});
        logFirebaseEvent('updateCartQuantity_update_page_state');
        cartFailed = true;
        updatePage(() {});
      }
    } else {
      logFirebaseEvent('updateCartQuantity_update_page_state');
      updatingCart = false;
      updatePage(() {});
      logFirebaseEvent('updateCartQuantity_update_page_state');
      cartUpdateError = 'Could not update quantity. Please try again.';
      updatePage(() {});
    }
  }
}
