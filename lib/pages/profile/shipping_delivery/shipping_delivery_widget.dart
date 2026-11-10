import '/components/bullet_item2_widget.dart';
import '/components/contact_widget.dart';
import '/components/policy_section2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shipping_delivery_model.dart';
export 'shipping_delivery_model.dart';

/// # Shipping & Delivery
///
/// We are committed to delivering your eyewear safely and securely across
/// India.
///
/// ## 1. Shipping Information
///
/// - Delivery times may vary depending on product availability, stock status,
/// prescription requirements, and delivery location.
/// - The estimated delivery date will be displayed on the product page or at
/// checkout, where available.
/// - Orders are shipped through trusted courier partners across India,
/// subject to service availability.
/// - Prescription eyewear, prescription lenses, progressive lenses, and
/// customised products may require additional processing time before
/// dispatch.
/// - Please inspect your package upon delivery. If the package appears
/// damaged or tampered with, report the issue to Optic Suit Customer Support
/// as soon as possible. If you suspect the contents may be unsafe or
/// compromised, avoid using the products until the issue is resolved.
/// - Delivery timelines are estimates and may be affected by weather
/// conditions, public holidays, courier disruptions, or other unforeseen
/// circumstances.
///
/// ## 2. Delivery Updates
///
/// Where tracking is available, customers can use the tracking details
/// provided after dispatch to check their order status. For assistance with a
/// delayed shipment, please contact our customer support team.
///
/// ## 3. Contact Us
///
/// For shipping, delivery, or tracking-related queries, contact us:
///
/// **Phone:** +91 98478 22555
///
/// **Email:** support@opticsuit.comFlutterFlow design settings
/// Element	Setting
/// Page name	ShippingDeliveryPage
/// AppBar title	Shipping & Delivery
/// Background	#FFFFFF
/// Section headings	Poppins, 18 px, Semi Bold
/// Heading color	#1F3A87
/// Body text	Poppins, 14 px, Regular
/// Body text color	#4B5563
/// Line height	1.5
/// Horizontal padding	20 px
/// Section spacing	24 px
class ShippingDeliveryWidget extends StatefulWidget {
  const ShippingDeliveryWidget({super.key});

  static String routeName = 'ShippingDelivery';
  static String routePath = 'shippingDelivery';

  @override
  State<ShippingDeliveryWidget> createState() => _ShippingDeliveryWidgetState();
}

class _ShippingDeliveryWidgetState extends State<ShippingDeliveryWidget> {
  late ShippingDeliveryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingDeliveryModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ShippingDelivery'});
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 16.0, 20.0, 16.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Color(0xFF1F3A87),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SHIPPING_DELIVERY_PAGE_IconButton_ON_TAP');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.pushNamed(SettingsWidget.routeName);
                              },
                            ),
                            Text(
                              'Shipping & Delivery',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
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
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 20.0, 8.0),
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
                                    'Shipping & Delivery',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
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
                                    'We are committed to delivering your eyewear safely and securely across India.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF4B5563),
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
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 32.0,
                                        height: 32.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x1A1F3A87),
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.local_shipping_rounded,
                                          color: Color(0xFF1F3A87),
                                          size: 18.0,
                                        ),
                                      ),
                                      Text(
                                        '1. Shipping Information',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1F3A87),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.bulletItemModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BulletItem2Widget(
                                          text:
                                              'Delivery times may vary depending on product availability, stock status, prescription requirements, and delivery location.',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.bulletItemModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BulletItem2Widget(
                                          text:
                                              'The estimated delivery date will be displayed on the product page or at checkout, where available.',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.bulletItemModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BulletItem2Widget(
                                          text:
                                              'Orders are shipped through trusted courier partners across India, subject to service availability.',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.bulletItemModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BulletItem2Widget(
                                          text:
                                              'Prescription eyewear, prescription lenses, progressive lenses, and customised products may require additional processing time before dispatch.',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.bulletItemModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BulletItem2Widget(
                                          text:
                                              'Please inspect your package upon delivery. If the package appears damaged or tampered with, report the issue to Optic Suit Customer Support as soon as possible.',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.bulletItemModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BulletItem2Widget(
                                          text:
                                              'Delivery timelines are estimates and may be affected by weather conditions, public holidays, courier disruptions, or other unforeseen circumstances.',
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              wrapWithModel(
                                model: _model.policySectionModel,
                                updateCallback: () => safeSetState(() {}),
                                child: PolicySection2Widget(
                                  icon: Icon(
                                    Icons.update_rounded,
                                    color: Color(0xFF1F3A87),
                                    size: 18.0,
                                  ),
                                  title: '2. Delivery Updates',
                                  content:
                                      'Where tracking is available, customers can use the tracking details provided after dispatch to check their order status. For assistance with a delayed shipment, please contact our customer support team.',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.contactModel,
                                updateCallback: () => safeSetState(() {}),
                                child: ContactWidget(),
                              ),
                            ].divide(SizedBox(height: 20.0)),
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
      ),
    );
  }
}
