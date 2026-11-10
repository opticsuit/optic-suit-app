import '/components/language_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'language_widget.dart' show LanguageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LanguageModel extends FlutterFlowModel<LanguageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LanguageCard.
  late LanguageCardModel languageCardModel1;
  // Model for LanguageCard.
  late LanguageCardModel languageCardModel2;
  // Model for LanguageCard.
  late LanguageCardModel languageCardModel3;
  // Model for LanguageCard.
  late LanguageCardModel languageCardModel4;
  // Model for LanguageCard.
  late LanguageCardModel languageCardModel5;
  // Model for LanguageCard.
  late LanguageCardModel languageCardModel6;
  // Model for LanguageCard.
  late LanguageCardModel languageCardModel7;

  @override
  void initState(BuildContext context) {
    languageCardModel1 = createModel(context, () => LanguageCardModel());
    languageCardModel2 = createModel(context, () => LanguageCardModel());
    languageCardModel3 = createModel(context, () => LanguageCardModel());
    languageCardModel4 = createModel(context, () => LanguageCardModel());
    languageCardModel5 = createModel(context, () => LanguageCardModel());
    languageCardModel6 = createModel(context, () => LanguageCardModel());
    languageCardModel7 = createModel(context, () => LanguageCardModel());
  }

  @override
  void dispose() {
    languageCardModel1.dispose();
    languageCardModel2.dispose();
    languageCardModel3.dispose();
    languageCardModel4.dispose();
    languageCardModel5.dispose();
    languageCardModel6.dispose();
    languageCardModel7.dispose();
  }
}
