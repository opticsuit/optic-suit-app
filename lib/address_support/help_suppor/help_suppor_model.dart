import '/components/faq_item_widget.dart';
import '/components/help_topic_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'help_suppor_widget.dart' show HelpSupporWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelpSupporModel extends FlutterFlowModel<HelpSupporWidget> {
  ///  Local state fields for this page.

  bool showFAQ1 = false;

  ///  State fields for stateful widgets in this page.

  // Model for HelpTopicCard.
  late HelpTopicCardModel helpTopicCardModel1;
  // Model for HelpTopicCard.
  late HelpTopicCardModel helpTopicCardModel2;
  // Model for HelpTopicCard.
  late HelpTopicCardModel helpTopicCardModel3;
  // Model for HelpTopicCard.
  late HelpTopicCardModel helpTopicCardModel4;
  // Model for HelpTopicCard.
  late HelpTopicCardModel helpTopicCardModel5;
  // Model for HelpTopicCard.
  late HelpTopicCardModel helpTopicCardModel6;
  // Model for FaqItem component.
  late FaqItemModel faqItemModel1;
  // Model for FaqItem component.
  late FaqItemModel faqItemModel2;
  // Model for FaqItem component.
  late FaqItemModel faqItemModel3;
  // Model for FaqItem component.
  late FaqItemModel faqItemModel4;
  // Model for FaqItem component.
  late FaqItemModel faqItemModel5;

  @override
  void initState(BuildContext context) {
    helpTopicCardModel1 = createModel(context, () => HelpTopicCardModel());
    helpTopicCardModel2 = createModel(context, () => HelpTopicCardModel());
    helpTopicCardModel3 = createModel(context, () => HelpTopicCardModel());
    helpTopicCardModel4 = createModel(context, () => HelpTopicCardModel());
    helpTopicCardModel5 = createModel(context, () => HelpTopicCardModel());
    helpTopicCardModel6 = createModel(context, () => HelpTopicCardModel());
    faqItemModel1 = createModel(context, () => FaqItemModel());
    faqItemModel2 = createModel(context, () => FaqItemModel());
    faqItemModel3 = createModel(context, () => FaqItemModel());
    faqItemModel4 = createModel(context, () => FaqItemModel());
    faqItemModel5 = createModel(context, () => FaqItemModel());
  }

  @override
  void dispose() {
    helpTopicCardModel1.dispose();
    helpTopicCardModel2.dispose();
    helpTopicCardModel3.dispose();
    helpTopicCardModel4.dispose();
    helpTopicCardModel5.dispose();
    helpTopicCardModel6.dispose();
    faqItemModel1.dispose();
    faqItemModel2.dispose();
    faqItemModel3.dispose();
    faqItemModel4.dispose();
    faqItemModel5.dispose();
  }
}
