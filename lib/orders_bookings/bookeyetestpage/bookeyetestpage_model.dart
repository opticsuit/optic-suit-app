import '/components/date_item_widget.dart';
import '/components/summary_row2_widget.dart';
import '/components/time_slot6_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'bookeyetestpage_widget.dart' show BookeyetestpageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookeyetestpageModel extends FlutterFlowModel<BookeyetestpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for DateItem.
  late DateItemModel dateItemModel1;
  // Model for DateItem.
  late DateItemModel dateItemModel2;
  // Model for DateItem.
  late DateItemModel dateItemModel3;
  // Model for DateItem.
  late DateItemModel dateItemModel4;
  // Model for DateItem.
  late DateItemModel dateItemModel5;
  // Model for TimeSlot.
  late TimeSlot6Model timeSlotModel1;
  // Model for TimeSlot.
  late TimeSlot6Model timeSlotModel2;
  // Model for TimeSlot.
  late TimeSlot6Model timeSlotModel3;
  // Model for TimeSlot.
  late TimeSlot6Model timeSlotModel4;
  // Model for TimeSlot.
  late TimeSlot6Model timeSlotModel5;
  // Model for TimeSlot.
  late TimeSlot6Model timeSlotModel6;
  // State field(s) for Enteryourfullname widget.
  FocusNode? enteryourfullnameFocusNode;
  TextEditingController? enteryourfullnameTextController;
  String? Function(BuildContext, String?)?
      enteryourfullnameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for SummaryRow.
  late SummaryRow2Model summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRow2Model summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRow2Model summaryRowModel3;

  @override
  void initState(BuildContext context) {
    dateItemModel1 = createModel(context, () => DateItemModel());
    dateItemModel2 = createModel(context, () => DateItemModel());
    dateItemModel3 = createModel(context, () => DateItemModel());
    dateItemModel4 = createModel(context, () => DateItemModel());
    dateItemModel5 = createModel(context, () => DateItemModel());
    timeSlotModel1 = createModel(context, () => TimeSlot6Model());
    timeSlotModel2 = createModel(context, () => TimeSlot6Model());
    timeSlotModel3 = createModel(context, () => TimeSlot6Model());
    timeSlotModel4 = createModel(context, () => TimeSlot6Model());
    timeSlotModel5 = createModel(context, () => TimeSlot6Model());
    timeSlotModel6 = createModel(context, () => TimeSlot6Model());
    summaryRowModel1 = createModel(context, () => SummaryRow2Model());
    summaryRowModel2 = createModel(context, () => SummaryRow2Model());
    summaryRowModel3 = createModel(context, () => SummaryRow2Model());
  }

  @override
  void dispose() {
    dateItemModel1.dispose();
    dateItemModel2.dispose();
    dateItemModel3.dispose();
    dateItemModel4.dispose();
    dateItemModel5.dispose();
    timeSlotModel1.dispose();
    timeSlotModel2.dispose();
    timeSlotModel3.dispose();
    timeSlotModel4.dispose();
    timeSlotModel5.dispose();
    timeSlotModel6.dispose();
    enteryourfullnameFocusNode?.dispose();
    enteryourfullnameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
  }
}
