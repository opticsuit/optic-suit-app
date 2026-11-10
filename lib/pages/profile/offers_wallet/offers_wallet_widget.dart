import '/components/offer_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'offers_wallet_model.dart';
export 'offers_wallet_model.dart';

/// # Offers & Wallet Page – Design Plan
///
/// ## 1.
///
/// Page Setup
/// - **Page Name:** `OffersWalletPage`
/// - **Background Color:** `#F0F0F0`
/// - **Primary Color:** `#1F3A87`
/// - **Accent Color:** `#E9EFEA`
/// - **Font Family:** Poppins
/// - **Page Padding:** 20 px left and right
/// - **Scroll:** SingleChildScrollView / scrollable page
///
/// ## 2. AppBar
/// - Height: 56 px
/// - Background: `#FFFFFF`
/// - Leading: Back Arrow
/// - Title: `Offers & Wallet`
/// - Title Font: Poppins, 18 px, SemiBold
/// - Title Color: `#1F3A87`
/// - Back Icon: `arrow_back`
/// - Icon Size: 24 px
///
/// ## 3. Wallet Balance Card
/// - Width: Full width
/// - Height: 150 px
/// - Background: `#1F3A87`
/// - Border Radius: 16 px
/// - Padding: 20 px
/// - Add a Wallet Icon at the top.
/// - Label: `Available Balance`
/// - Label Font: 14 px, Regular, Color `#FFFFFF`
/// - Balance Text: `₹0.00`
/// - Balance Font: 28 px, Bold, Color `#FFFFFF`
/// - Add a small `View Transactions` text/button at the bottom.
/// - Spacing: 8–12 px
///
/// *Note: Display the wallet card only if wallet balance and transaction
/// functionality are supported by the app.*
///
/// ## 4. Apply Coupon Section
/// - Heading: `Have a Coupon Code?`
/// - Heading Font: 18 px, SemiBold
/// - Heading Color: `#222222`
/// - Spacing below heading: 12 px
///
/// ### Coupon Container
/// - Width: Full width
/// - Background: `#FFFFFF`
/// - Border Radius: 12 px
/// - Padding: 16 px
///
/// ### Coupon Code Input
/// - Hint Text: `Enter coupon code`
/// - Height: 48 px
/// - Border Radius: 10 px
/// - Border Color: `#D9DEE7`
/// - Font: Poppins, 14 px
/// - Prefix Icon: `confirmation_number`
/// - Input Text Color: `#222222`
///
/// ### Apply Button
/// - Text: `Apply`
/// - Height: 48 px
/// - Width: 90 px
/// - Background: `#1F3A87`
/// - Text Color: `#FFFFFF`
/// - Font: 14 px, SemiBold
/// - Border Radius: 10 px
///
/// Place the input and button in one Row with a 10 px gap. Show success or
/// error feedback after applying the coupon.
///
/// ## 5. Available Offers Section
/// - Heading: `Available Offers`
/// - Heading Font: 18 px, SemiBold
/// - Heading Color: `#222222`
/// - Top Spacing: 24 px
/// - Bottom Spacing: 12 px
///
/// ### Offer Card
/// - Width: Full width
/// - Background: `#FFFFFF`
/// - Border Radius: 12 px
/// - Padding: 16 px
/// - Border: `#E0E4E8`, 1 px
/// - Spacing between cards: 12 px
///
/// ### Offer Card Content
/// - Offer Icon: `local_offer`
/// - Icon Size: 24 px
/// - Icon Color: `#1F3A87`
/// - Offer Title: Example: `Flat ₹200 OFF`
/// - Title Font: 16 px, SemiBold
/// - Title Color: `#222222`
/// - Description: `Get ₹200 off on eligible purchases.`
/// - Description Font: 13 px, Regular
/// - Description Color: `#777777`
/// - Coupon Code: Show the actual valid coupon code in a small highlighted
/// container.
/// - Button: `Apply Offer` or `Copy Code`
/// - Button Height: 40 px
/// - Button Background: `#E9EFEA`
/// - Button Text Color: `#1F3A87`
/// - Border Radius: 8 px
///
/// Only display valid offers and their actual conditions, minimum order value
/// and expiry date. Do not use example coupon codes as live offers.
///
/// ## 6. Empty State
/// If no offers are available:
/// - Icon: `local_offer`
/// - Icon Size: 48 px
/// - Icon Color: `#98A2B3`
/// - Title: `No Offers Available`
/// - Description: `Check back later for new offers.`
/// - Alignment: Center
/// - Padding: 32 px
///
/// ## 7. Widget Tree
///
/// OffersWalletPage
/// - Scaffold
///   - AppBar
///     - Back Arrow
///     - Title: Offers & Wallet
///   - SingleChildScrollView
///     - Column
///       - Wallet Balance Card (optional)
///       - Apply Coupon Heading
///       - Coupon Container
///         - Row
///           - Coupon Code TextField
///           - Apply Button
///       - Available Offers Heading
///       - Offers List
///         - Offer Card
///         - Offer Card
///         - Empty State (if no offers)
///
/// ## 8. Actions
/// - Back Arrow → Navigate Back
/// - Apply Button → Validate coupon through WooCommerce/app coupon logic
/// - Copy Code → Copy coupon code to clipboard
/// - Apply Offer → Apply the selected valid coupon
/// - View Transactions → Open Wallet Transactions page, if implemented
///
/// ## 9. Responsive Design
/// - Use 20 px horizontal padding.
/// - Use full-width cards.
/// - Keep 12–16 px vertical spacing between sections.
/// - Allow the page to scroll vertically.
/// - Avoid fixed heights for offer descriptions that may wrap onto multiple
/// lines.
///
/// ## 10. Final Design Checklist
/// - [ ] AppBar and back navigation
/// - [ ] Wallet card, only if supported
/// - [ ] Coupon input and Apply button
/// - [ ] Available Offers heading and cards
/// - [ ] Valid coupon details and conditions
/// - [ ] Empty state
/// - [ ] Responsive layout
/// - [ ] Coupon and wallet actions connected to the backendFlutterFlow –
/// Component Design Properties
/// Component	Design
/// Page background	#F0F0F0
/// AppBar	Height 56 px, white
/// Wallet card	Full width, 150 px height, #1F3A87, radius 16 px
/// Section heading	Poppins, 18 px, SemiBold
/// Coupon input	Height 48 px, radius 10 px
/// Apply button	Height 48 px, #1F3A87
/// Offer cards	White, radius 12 px, padding 16 px
/// Offer icon box	48 × 48 px, #E9EFEA
/// Offer title	Poppins, 16 px, SemiBold
/// Page padding	20 px horizontal
class OffersWalletWidget extends StatefulWidget {
  const OffersWalletWidget({super.key});

  static String routeName = 'OffersWallet';
  static String routePath = 'offersWallet';

  @override
  State<OffersWalletWidget> createState() => _OffersWalletWidgetState();
}

class _OffersWalletWidgetState extends State<OffersWalletWidget> {
  late OffersWalletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OffersWalletModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OffersWallet'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).secondaryText),
          automaticallyImplyLeading: true,
          title: Text(
            'Offers & Wallet',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  color: Color(0xFF1F3A87),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 60.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16.0,
                        color: Color(0x261F3A87),
                        offset: Offset(
                          0.0,
                          6.0,
                        ),
                        spreadRadius: 0.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Color(0xFFE5E7EB),
                      width: 1.0,
                    ),
                  ),
                  child: Container(
                    height: 148.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                            (FFMainAxisAlignment.spaceBetween).flutterValue,
                        crossAxisAlignment:
                            (FFCrossAxisAlignment.start).flutterValue,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.spaceBetween).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.center).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    (FFMainAxisAlignment.start).flutterValue,
                                crossAxisAlignment:
                                    (FFCrossAxisAlignment.center).flutterValue,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Icon(
                                    Icons.account_balance_wallet_rounded,
                                    color: Color(0xFF1F3A87),
                                    size: 22.0,
                                  ),
                                  Text(
                                    'Offers wallet',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF333333),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Text(
                                'View Transactions',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F3A87),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.start).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Available Balance',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF333333),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                '₹0.00',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F3A87),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 6.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        child: Text(
                          'Have a Coupon Code?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFFE5E7EB),
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 200.0,
                                child: Container(
                                  width: 210.0,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: false,
                                    enabled: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Enter coupon code',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF666666),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE5E7EB),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
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
                                          color: Color(0xFF333333),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    cursorColor: Color(0xFF1F3A87),
                                    enableInteractiveSelection: true,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Apply',
                                        options: FFButtonOptions(
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
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        child: Text(
                          'Available Offers',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.offerCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: OfferCardWidget(
                              title: 'Flat ₹200 OFF',
                              desc:
                                  'Get ₹200 off on eligible purchases above ₹1999.',
                              code: 'OPTIC200',
                              expiry: '31 Dec 2024',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.offerCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: OfferCardWidget(
                              title: 'First Order Special',
                              desc:
                                  'Enjoy 15% discount on your first eyewear purchase.',
                              code: 'WELCOME15',
                              expiry: '15 Oct 2024',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.offerCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: OfferCardWidget(
                              title: 'Summer Sale',
                              desc:
                                  'Buy 1 Get 1 free on selected sunglasses frames.',
                              code: 'BOGOFREE',
                              expiry: '20 Sep 2024',
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
