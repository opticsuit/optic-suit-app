import '/backend/api_requests/api_calls.dart';
import '/components/detail_row2_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  Local state fields for this page.

  bool? descriptionExpanded = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - initializeCartToken] action in ProductDetails widget.
  String? initializedCartToken;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model1;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model2;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model3;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model4;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model5;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model6;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model7;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model8;
  // Model for DetailRow2.
  late DetailRow2Model detailRow2Model9;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textFieldTextController1;
  String? Function(BuildContext, String?)? textFieldTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textFieldTextController2;
  String? Function(BuildContext, String?)? textFieldTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textFieldTextController3;
  String? Function(BuildContext, String?)? textFieldTextController3Validator;
  // Stores action output result for [Backend Call - API (AddToCart)] action in Button widget.
  ApiCallResponse? addToCartDslRes0;

  @override
  void initState(BuildContext context) {
    detailRow2Model1 = createModel(context, () => DetailRow2Model());
    detailRow2Model2 = createModel(context, () => DetailRow2Model());
    detailRow2Model3 = createModel(context, () => DetailRow2Model());
    detailRow2Model4 = createModel(context, () => DetailRow2Model());
    detailRow2Model5 = createModel(context, () => DetailRow2Model());
    detailRow2Model6 = createModel(context, () => DetailRow2Model());
    detailRow2Model7 = createModel(context, () => DetailRow2Model());
    detailRow2Model8 = createModel(context, () => DetailRow2Model());
    detailRow2Model9 = createModel(context, () => DetailRow2Model());
  }

  @override
  void dispose() {
    detailRow2Model1.dispose();
    detailRow2Model2.dispose();
    detailRow2Model3.dispose();
    detailRow2Model4.dispose();
    detailRow2Model5.dispose();
    detailRow2Model6.dispose();
    detailRow2Model7.dispose();
    detailRow2Model8.dispose();
    detailRow2Model9.dispose();
    textFieldFocusNode1?.dispose();
    textFieldTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textFieldTextController2?.dispose();

    textFieldFocusNode3?.dispose();
    textFieldTextController3?.dispose();
  }
}
