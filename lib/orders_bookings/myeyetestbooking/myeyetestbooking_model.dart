import '/components/booking_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'myeyetestbooking_widget.dart' show MyeyetestbookingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
