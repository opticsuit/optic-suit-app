import '/components/body_paragraph_widget.dart';
import '/components/bullet_item_widget.dart';
import '/components/contact_widget.dart';
import '/components/section_header4_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_conditions_model.dart';
export 'terms_conditions_model.dart';

/// FlutterFlow design settings
/// - Page name: TermsConditionsPage
/// - Background: #FFFFFF
/// - AppBar title: Terms & Conditions
/// - Section headings: Poppins, 18 px, Semi Bold, #1F3A87
/// - Body text: Poppins, 14 px, Regular, #4B5563
/// - Line height: 1.5
/// - Horizontal padding: 20 px
/// - Section spacing: 20–24 px
/// - Layout: Scaffold → AppBar → SafeArea → SingleChildScrollView → Padding →
/// Column# Terms & Conditions
///
/// **Last Updated: 19 October 2026**
///
/// Please read these Terms & Conditions carefully before using the Optic Suit
/// website or app, or placing an order.
///
/// ## 1. General
///
/// These Terms & Conditions govern your use of the Optic Suit website and app
/// and the purchase of our products. Optic Suit may update these terms from
/// time to time. Updated terms will be published on our website or app with a
/// revised date. Your rights under applicable law will not be affected by
/// these updates.
///
/// ## 2. Products & Pricing
///
/// We strive to ensure that product descriptions, specifications, images, and
/// prices are accurate. Product images are for illustration purposes, and
/// actual colours may vary slightly due to screen settings or manufacturer
/// updates.
///
/// Prices and product availability may change. Promotional offers are valid
/// only for the specified period and subject to their stated conditions.
///
/// ## 3. Orders & Payment
///
/// Placing an order indicates your intention to purchase. Orders are subject
/// to product availability and confirmation. Payments must be made using the
/// payment methods available at checkout.
///
/// - **Cash on Delivery (COD)** is available only for frame-only orders,
/// subject to delivery serviceability and availability.
/// - COD is not available for frame-and-lens orders. These orders must be
/// paid online at checkout.
/// - COD is not available for contact lens orders. Contact lens orders must
/// be paid online at checkout.
/// - Additional delivery charges may apply to certain locations. Applicable
/// charges will be shown before order confirmation.
///
/// ## 4. Shipping & Delivery
///
/// We offer shipping across India, subject to service availability. Estimated
/// delivery times may vary depending on location, courier operations,
/// weather, and other unforeseen circumstances. We will make reasonable
/// efforts to assist customers with delivery issues. Your statutory rights
/// remain unaffected.
///
/// ## 5. Returns & Exchanges
///
/// - Exchanges may be considered for damaged, defective, incorrect products,
/// or approved size/fit issues.
/// - Exchange requests must be submitted within **7 days of delivery**.
/// - Products must be unused and returned with their original packaging,
/// invoice, and accessories, where applicable.
/// - Products damaged through misuse, accidental damage, scratches, or normal
/// wear and tear may not qualify for exchange.
/// - Prescription eyewear, prescription lenses, contact lenses, and
/// customised products are not eligible for return or exchange except where
/// permitted by applicable law, or where the product is defective or
/// incorrectly supplied.
/// - If an approved exchange product costs more, the customer must pay the
/// difference.
/// - If the replacement product costs less, the difference will not be
/// refunded unless required by applicable law or agreed by Optic Suit.
/// - COD orders are not eligible for cash refunds under the standard exchange
/// policy. Any refund required by applicable law will be handled accordingly.
/// - All exchange requests are subject to verification and inspection by
/// Optic Suit.
///
/// Please contact customer support for instructions before returning a
/// product.
///
/// ## 6. Contact Lens Policy
///
/// Contact lenses are hygiene-sensitive products and are supplied in sealed,
/// original packaging. Customers should carefully verify the lens power,
/// type, quantity, and product details before placing an order.
///
/// - COD is not available for contact lens orders. Payment must be made
/// online at checkout.
/// - Contact lenses cannot be returned or exchanged once opened or unsealed,
/// except where required by applicable law or where a product is defective or
/// incorrectly supplied.
/// - Eligible issues, including damaged, defective, incorrect, or incorrectly
/// supplied power/type, must be reported within **7 days of delivery**.
/// - Keep the box, seal, packaging, invoice, and accessories intact while
/// reporting an issue.
/// - Opened, used, damaged, scratched, or contaminated contact lenses may not
/// qualify for return or exchange, subject to applicable law.
/// - Customers are responsible for providing accurate prescription/power
/// details when placing an order.
/// - Optic Suit cannot guarantee suitability where incorrect prescription
/// details have been provided by the customer.
/// - Contact lenses should be used only as advised by a qualified eye-care
/// professional and according to the manufacturer's instructions.
/// - Customers may be asked to provide photographs, packaging details, or
/// other information to help verify a reported issue.
/// - All requests are subject to verification and applicable consumer
/// protection requirements.
///
/// ## 7. Limitation of Liability
///
/// To the extent permitted by applicable law, Optic Suit is not liable for
/// indirect or consequential losses arising from the use of our website, app,
/// or products. Nothing in these terms excludes liability that cannot legally
/// be excluded or limits any consumer rights available under applicable law.
///
/// ## 8. Privacy & Data Protection
///
/// Personal information is handled in accordance with our Privacy Policy and
/// applicable data protection laws. We take reasonable measures to protect
/// customer information and support secure transactions.
///
/// ## 9. Governing Law & Disputes
///
/// These Terms & Conditions are governed by the laws of India. Disputes will
/// be handled by the competent courts or authorities having jurisdiction
/// under applicable law. Nothing in these terms removes any consumer remedies
/// available under Indian law.
///
/// ## 10. Contact Us
///
/// For questions about these Terms & Conditions, orders, delivery, returns,
/// or exchanges, please contact Optic Suit through the customer support
/// details available on our website or app.
class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({super.key});

  static String routeName = 'TermsConditions';
  static String routePath = 'termsConditions';

  @override
  State<TermsConditionsWidget> createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  late TermsConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsConditionsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TermsConditions'});
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Terms & Conditions',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          actions: [],
          centerTitle: false,
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
                padding: EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Last Updated: 19 October 2026',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          Text(
                            'Please read these Terms & Conditions carefully before using the Optic Suit website or app, or placing an order.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF1F3A87),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '1. General',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.bodyParagraphModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: BodyParagraphWidget(
                          content:
                              'These Terms & Conditions govern your use of the Optic Suit website and app and the purchase of our products. Optic Suit may update these terms from time to time. Updated terms will be published on our website or app with a revised date. Your rights under applicable law will not be affected by these updates.',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '2. Products & Pricing',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.bodyParagraphModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: BodyParagraphWidget(
                          content:
                              'We strive to ensure that product descriptions, specifications, images, and prices are accurate. Product images are for illustration purposes, and actual colours may vary slightly due to screen settings or manufacturer updates. Prices and product availability may change. Promotional offers are valid only for the specified period and subject to their stated conditions.',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '3. Orders & Payment',
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.bodyParagraphModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: BodyParagraphWidget(
                              content:
                                  'Placing an order indicates your intention to purchase. Orders are subject to product availability and confirmation. Payments must be made using the payment methods available at checkout.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Cash on Delivery (COD) is available only for frame-only orders, subject to delivery serviceability and availability.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'COD is not available for frame-and-lens orders. These orders must be paid online at checkout.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'COD is not available for contact lens orders. Contact lens orders must be paid online at checkout.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Additional delivery charges may apply to certain locations. Applicable charges will be shown before order confirmation.',
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '4. Shipping & Delivery',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.bodyParagraphModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: BodyParagraphWidget(
                          content:
                              'We offer shipping across India, subject to service availability. Estimated delivery times may vary depending on location, courier operations, weather, and other unforeseen circumstances. We will make reasonable efforts to assist customers with delivery issues. Your statutory rights remain unaffected.',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '5. Returns & Exchanges',
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.bulletItemModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Exchanges may be considered for damaged, defective, incorrect products, or approved size/fit issues.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Exchange requests must be submitted within 7 days of delivery.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Products must be unused and returned with their original packaging, invoice, and accessories, where applicable.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Prescription eyewear, prescription lenses, contact lenses, and customised products are not eligible for return or exchange except where permitted by applicable law.',
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '6. Contact Lens Policy',
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.bodyParagraphModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: BodyParagraphWidget(
                              content:
                                  'Contact lenses are hygiene-sensitive products and are supplied in sealed, original packaging. Customers should carefully verify the lens power, type, quantity, and product details before placing an order.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel9,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'COD is not available for contact lens orders. Payment must be made online at checkout.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel10,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Eligible issues must be reported within 7 days of delivery.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bulletItemModel11,
                            updateCallback: () => safeSetState(() {}),
                            child: BulletItemWidget(
                              content:
                                  'Customers are responsible for providing accurate prescription/power details when placing an order.',
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '7. Limitation of Liability',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.bodyParagraphModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: BodyParagraphWidget(
                          content:
                              'To the extent permitted by applicable law, Optic Suit is not liable for indirect or consequential losses arising from the use of our website, app, or products.',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '8. Privacy & Data Protection',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.bodyParagraphModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: BodyParagraphWidget(
                          content:
                              'Personal information is handled in accordance with our Privacy Policy and applicable data protection laws.',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sectionHeaderModel9,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionHeader4Widget(
                          title: '9. Governing Law & Disputes',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.bodyParagraphModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: BodyParagraphWidget(
                          content:
                              'These Terms & Conditions are governed by the laws of India. Disputes will be handled by the competent courts or authorities having jurisdiction under applicable law.',
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.contactModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ContactWidget(),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
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
    );
  }
}
