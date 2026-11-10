import '/components/contact_widget.dart';
import '/components/policy_section_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

/// # Privacy Policy
///
/// **Last Updated: 19 October 2026**
///
/// ## 1.
///
/// Introduction
///
/// At Optic Suit, we value your privacy and are committed to protecting your
/// personal information. This Privacy Policy explains how we collect, use,
/// store, and protect your information when you visit our website, use our
/// app, or make a purchase.
///
/// ## 2. Information We Collect
///
/// We may collect the following information:
///
/// - Name
/// - Email address
/// - Phone number
/// - Billing and shipping address
/// - Payment information (processed securely by payment providers)
/// - Order details and purchase history
/// - OTP verification information, where applicable
/// - Prescription details, where applicable
/// - Device information, IP address, and browser information
///
/// ## 3. How We Use Your Information
///
/// We use your information to:
///
/// - Process and deliver orders
/// - Verify payments
/// - Provide customer support
/// - Send order and shipping updates
/// - Improve our website, app, and services
/// - Comply with applicable legal obligations
///
/// ## 4. Payments
///
/// Online payments are processed through trusted third-party payment
/// gateways. Optic Suit does not store your debit card number, credit card
/// number, CVV, UPI PIN, or banking credentials on its own systems. Payment
/// providers may process payment information according to their own privacy
/// policies.
///
/// ## 5. Cookies and Tracking Technologies
///
/// We may use cookies and similar technologies to improve your browsing
/// experience, remember your preferences, and analyse website traffic. You
/// can manage or disable cookies through your browser settings. Some features
/// may not work correctly if cookies are disabled.
///
/// ## 6. Sharing Your Information
///
/// We may share relevant information with:
///
/// - Courier and delivery partners
/// - Payment gateway providers
/// - Technology and service providers
/// - Government authorities, where required by law
///
/// **We do not sell or rent your personal information.** Information is
/// shared only when necessary for the purposes described in this policy or as
/// required by applicable law.
///
/// ## 7. Data Security
///
/// We take reasonable technical and organisational measures to protect your
/// personal information against unauthorised access, misuse, disclosure,
/// alteration, or loss. However, no method of electronic transmission or
/// storage can be guaranteed to be completely secure.
///
/// ## 8. Your Privacy Rights
///
/// Subject to applicable laws, you may request access to, correction of, or
/// deletion of your personal information. You may also raise concerns about
/// how your information is used by contacting Optic Suit through the
/// available customer support channels.
///
/// ## 9. Third-Party Services
///
/// Our app or website may use third-party services such as payment gateways,
/// delivery providers, analytics tools, or authentication services. These
/// providers may process information under their respective privacy policies
/// and terms.
///
/// ## 10. Children's Privacy
///
/// Our services are not intended to collect personal information from
/// children without appropriate authorisation or consent where required by
/// law. If you believe a child’s information has been collected improperly,
/// please contact us.
///
/// ## 11. Policy Updates
///
/// Optic Suit may update this Privacy Policy from time to time. Changes will
/// be published on our website or app with an updated revision date. Where
/// required by law, we will provide additional notice or obtain consent.
///
/// ## 12. Contact Us
///
/// If you have questions, concerns, or requests regarding this Privacy
/// Policy, please contact Optic Suit through the customer support details
/// provided in our app or website.FlutterFlow design settings
/// Element	Recommended setting
/// Page background	#FFFFFF
/// AppBar title	Privacy Policy
/// Heading color	#1F3A87
/// Heading font	Poppins, 18 px, Semi Bold
/// Body text	Poppins, 14 px, Regular
/// Body text color	#4B5563
/// Line height	1.5–1.6
/// Section spacing	20–24 px
/// Horizontal padding	20 px
/// Scroll	Enable vertical scrolling
class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  static String routeName = 'PrivacyPolicy';
  static String routePath = 'privacyPolicy';

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PrivacyPolicy'});
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
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF1F3A87)),
          automaticallyImplyLeading: true,
          leading: FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 40.0,
            fillColor: Colors.transparent,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF1F3A87),
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('PRIVACY_POLICY_PAGE_IconButton_ON_TAP');
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: Text(
            'Privacy Policy',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
                  color: Color(0xFF1F3A87),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                ),
          ),
          actions: [],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              height: 1.0,
              decoration: BoxDecoration(
                color: Color(0xFFE5E7EB),
              ),
            ),
          ),
          centerTitle: false,
          toolbarHeight: 60.0,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
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
                                    'Privacy Policy',
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
                                          color: Color(0xFF1F3A87),
                                          fontSize: 24.0,
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
                                    'Last Updated: 19 October 2026',
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PRIVACY_POLICY_Container_9gpq3h2a_ON_TAP');
                                        logFirebaseEvent('CONTACT_navigate_to');

                                        context.pushNamed(
                                            SettingsWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.contactModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ContactWidget(),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '1. Introduction',
                                  content:
                                      'At Optic Suit, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, store, and protect your information when you visit our website, use our app, or make a purchase.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '2. Information We Collect',
                                  content:
                                      'We may collect the following information:\n\n• Name\n• Email address\n• Phone number\n• Billing and shipping address\n• Payment information (processed securely by payment providers)\n• Order details and purchase history\n• OTP verification information, where applicable\n• Prescription details, where applicable\n• Device information, IP address, and browser information',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '3. How We Use Your Information',
                                  content:
                                      'We use your information to:\n\n• Process and deliver orders\n• Verify payments\n• Provide customer support\n• Send order and shipping updates\n• Improve our website, app, and services\n• Comply with applicable legal obligations',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '4. Payments',
                                  content:
                                      'Online payments are processed through trusted third-party payment gateways. Optic Suit does not store your debit card number, credit card number, CVV, UPI PIN, or banking credentials on its own systems. Payment providers may process payment information according to their own privacy policies.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '5. Cookies and Tracking Technologies',
                                  content:
                                      'We may use cookies and similar technologies to improve your browsing experience, remember your preferences, and analyse website traffic. You can manage or disable cookies through your browser settings. Some features may not work correctly if cookies are disabled.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '6. Sharing Your Information',
                                  content:
                                      'We may share relevant information with:\n\n• Courier and delivery partners\n• Payment gateway providers\n• Technology and service providers\n• Government authorities, where required by law\n\nWe do not sell or rent your personal information. Information is shared only when necessary for the purposes described in this policy or as required by applicable law.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '7. Data Security',
                                  content:
                                      'We take reasonable technical and organisational measures to protect your personal information against unauthorised access, misuse, disclosure, alteration, or loss. However, no method of electronic transmission or storage can be guaranteed to be completely secure.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '8. Your Privacy Rights',
                                  content:
                                      'Subject to applicable laws, you may request access to, correction of, or deletion of your personal information. You may also raise concerns about how your information is used by contacting Optic Suit through the available customer support channels.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '9. Third-Party Services',
                                  content:
                                      'Our app or website may use third-party services such as payment gateways, delivery providers, analytics tools, or authentication services. These providers may process information under their respective privacy policies and terms.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '10. Children\'s Privacy',
                                  content:
                                      'Our services are not intended to collect personal information from children without appropriate authorisation or consent where required by law. If you believe a child’s information has been collected improperly, please contact us.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySectionWidget(
                                  title: '11. Policy Updates',
                                  content:
                                      'Optic Suit may update this Privacy Policy from time to time. Changes will be published on our website or app with an updated revision date. Where required by law, we will provide additional notice or obtain consent.',
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 20.0),
                                  child: Container(
                                    child: Container(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.security_rounded,
                                            color: Color(0xFF1F3A87),
                                            size: 32.0,
                                          ),
                                          Text(
                                            'Optic Suit Privacy Team',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 32.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
