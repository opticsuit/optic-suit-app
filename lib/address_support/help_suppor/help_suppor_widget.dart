import '/components/faq_item_widget.dart';
import '/components/help_topic_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help_suppor_model.dart';
export 'help_suppor_model.dart';

/// Help & Support — Exact Design
/// Background: #F7F8FA
/// Primary Blue: #1F3A87
/// Card: #FFFFFF
/// Text: #1A1A1A
/// Secondary: #6B7280
/// 1.
///
/// Top App Bar
/// ←    Help & Support
///
/// - Height: 56 px
/// - Title: 20 px, SemiBold
/// - Back icon: 24 px
/// 2. Search Box
/// ┌─────────────────────────────────────┐
/// │ 🔍   Search for help                │
/// └─────────────────────────────────────┘
///
/// - Height: 48 px
/// - Radius: 12 px
/// - Margin: 16 px
/// - Background: White
/// - Search icon: #6B7280
/// 3. Help Topics
/// Help Topics
/// Small heading, 18 px SemiBold.
/// Use 2-column cards:
/// ┌──────────────────┐  ┌──────────────────┐
/// │   📦             │  │   ↩              │
/// │ Orders &         │  │ Returns &         │
/// │ Delivery         │  │ Exchanges        │
/// └──────────────────┘  └──────────────────┘
///
/// ┌──────────────────┐  ┌──────────────────┐
/// │   💳             │  │   👓             │
/// │ Payments &       │  │ Product &        │
/// │ Refunds          │  │ Lens             │
/// └──────────────────┘  └──────────────────┘
///
/// ┌──────────────────┐  ┌──────────────────┐
/// │   👁             │  │   👤             │
/// │ Eye Test         │  │ Account &        │
/// │ Booking          │  │ Address          │
/// └──────────────────┘  └──────────────────┘
///
/// Card size: around 165 × 90 px
/// Radius: 12 px
/// Gap: 12 px
/// Icon → small circular/light-blue background.
/// 4. FAQ
/// Heading:
/// Frequently Asked Questions
/// Then white rounded list:
/// ┌─────────────────────────────────────┐
/// │ How can I track my order?       ˅  │
/// ├─────────────────────────────────────┤
/// │ How can I cancel my order?      ˅  │
/// ├─────────────────────────────────────┤
/// │ How can I return a product?     ˅  │
/// ├─────────────────────────────────────┤
/// │ When will I receive my refund?  ˅  │
/// ├─────────────────────────────────────┤
/// │ How can I change my address?    ˅  │
/// └─────────────────────────────────────┘
///
/// - Each row: 52–56 px
/// - Divider: #E5E7EB
/// - Text: 14–15 px
/// - Chevron: 20 px
/// Accordion click ചെയ്താൽ answer താഴേക്ക് expand ചെയ്യാം.
/// 5. Contact Support
/// ഇത് bottom-ൽ ഒരു highlighted card:
/// ┌─────────────────────────────────────┐
/// │ Still need help?                    │
/// │                                     │
/// │ Our support team is here to help.   │
/// │                                     │
/// │  [ 💬 Chat with Us ]                │
/// │  [ 📞 Call Support ]                │
/// └─────────────────────────────────────┘
///
/// Chat with Us → Primary Blue button
/// Call Support → White/outlined button
/// 📐 Full page order
/// Help & Support
///       ↓
/// Search for help
///       ↓
/// Help Topics
///       ↓
/// 6 Help Topic Cards
///       ↓
/// Frequently Asked Questions
///       ↓
/// 5 FAQ Items
///       ↓
/// Still need help?
///       ↓
/// Chat with Us | Call Support
///
/// FlutterFlow-ൽ
/// Page → SingleChildScrollView → Column
/// AppBar
/// ↓
/// Padding 16
/// ↓
/// Search TextField
/// ↓
/// SizedBox 24
/// ↓
/// Text("Help Topics")
/// ↓
/// GridView 2 columns
/// ↓
/// SizedBox 24
/// ↓
/// Text("Frequently Asked Questions")
/// ↓
/// FAQ Container / ExpansionTile
/// ↓
/// SizedBox 24
/// ↓
/// Support Card
class HelpSupporWidget extends StatefulWidget {
  const HelpSupporWidget({super.key});

  static String routeName = 'HelpSuppor';
  static String routePath = 'helpSuppor';

  @override
  State<HelpSupporWidget> createState() => _HelpSupporWidgetState();
}

class _HelpSupporWidgetState extends State<HelpSupporWidget> {
  late HelpSupporModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpSupporModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HelpSuppor'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF7F8FA),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 56.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      child: Container(
                        height: 55.0,
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFF1A1A1A),
                              size: 24.0,
                            ),
                            Text(
                              'Help & Support',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E7EB),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Help Topics',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.helpTopicCardModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HelpTopicCardWidget(
                                              icon: Icon(
                                                Icons.inventory_2_rounded,
                                                color: Color(0xFF1F3A87),
                                                size: 18.0,
                                              ),
                                              label: 'Orders & Delivery',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.helpTopicCardModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HelpTopicCardWidget(
                                              icon: Icon(
                                                Icons.assignment_return_rounded,
                                                color: Color(0xFF1F3A87),
                                                size: 18.0,
                                              ),
                                              label: 'Returns & Exchanges',
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.helpTopicCardModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HelpTopicCardWidget(
                                              icon: Icon(
                                                Icons.payments_rounded,
                                                color: Color(0xFF1F3A87),
                                                size: 18.0,
                                              ),
                                              label: 'Payments & Refunds',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.helpTopicCardModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HelpTopicCardWidget(
                                              icon: Icon(
                                                Icons.help,
                                                color: Color(0xFF1F3A87),
                                                size: 18.0,
                                              ),
                                              label: 'Product & Lens',
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.helpTopicCardModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HelpTopicCardWidget(
                                              icon: Icon(
                                                Icons.visibility_rounded,
                                                color: Color(0xFF1F3A87),
                                                size: 18.0,
                                              ),
                                              label: 'Eye Test Booking',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.helpTopicCardModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HelpTopicCardWidget(
                                              icon: Icon(
                                                Icons.person_rounded,
                                                color: Color(0xFF1F3A87),
                                                size: 18.0,
                                              ),
                                              label: 'Account & Address',
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Frequently Asked Questions',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF1F3A87),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.faqItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FaqItemWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.faqItemModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FaqItemWidget(
                                        question: 'How can I cancel my order?',
                                        isOpen: false,
                                        answer:
                                            'Go to My Orders, select your order, and tap Cancel Order if the option is available. Cancellation depends on the order status.',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.faqItemModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FaqItemWidget(
                                        question: 'How can I return a product?',
                                        isOpen: false,
                                        answer:
                                            'Open My Orders, select the product, and choose Return/Exchange if available. Follow the instructions to submit your request.',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.faqItemModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FaqItemWidget(
                                        question:
                                            'When will I receive my refund?',
                                        isOpen: false,
                                        answer:
                                            'After your return is approved and processed, the refund will be initiated. The time taken depends on your payment method and provider.',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.faqItemModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FaqItemWidget(
                                        question:
                                            'How can I change my address?',
                                        isOpen: false,
                                        answer:
                                            'Go to Profile → My Address to add or edit a saved address. During checkout, select the address you want to use.',
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFFE5E7EB),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.headset_mic_outlined,
                                        color: Color(0xFF1F3A87),
                                        size: 27.0,
                                      ),
                                      Text(
                                        'Still need help?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1A1A1A),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Text(
                                        'Our support team is here to help.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF6B7280),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'HELP_SUPPOR_CONTACT_SUPPORT_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                              ContactSupportWidget.routeName);
                                        },
                                        text: 'Contact Support',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 48.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF1F3A87),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
