import '/components/booking_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'myeyetestbooking_widget.dart' show MyeyetestbookingWidget;
import 'package:flutter/material.dart';

class MyeyetestbookingModel extends FlutterFlowModel<MyeyetestbookingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BookingCard.
  late BookingCardModel bookingCardModel1;
  // Model for BookingCard.
  late BookingCardModel bookingCardModel2;
  // Model for BookingCard.
  late BookingCardModel bookingCardModel3;

  @override
  void initState(BuildContext context) {
    bookingCardModel1 = createModel(context, () => BookingCardModel());
    bookingCardModel2 = createModel(context, () => BookingCardModel());
    bookingCardModel3 = createModel(context, () => BookingCardModel());
  }

  @override
  void dispose() {
    bookingCardModel1.dispose();
    bookingCardModel2.dispose();
    bookingCardModel3.dispose();
  }
}
