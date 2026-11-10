import '/components/summary_row3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_success_model.dart';
export 'order_success_model.dart';

/// # Order Success Page – OpticSuit Ecommerce App
///
/// ## 1.
///
/// Page Information
/// - Page Name: `OrderSuccessPage`
/// - Page Purpose: Display order confirmation after a successful order
/// placement.
/// - Page Background Color: `#FFFFFF`
/// - Primary Theme Color: `#1F3A87`
/// - Secondary Background Color: `#E9EFEA`
/// - Font Family: Poppins
/// - Layout: Mobile-friendly, single-column layout
/// - Scrollable: Yes
/// - Horizontal Padding: 20 px
/// - Top Padding: 24 px
/// - Bottom Padding: 32 px
///
/// ## 2. Success Icon Section
///
/// ### Container
/// - Width: 100 px
/// - Height: 100 px
/// - Background Color: `#E9EFEA`
/// - Border Radius: 50 px
/// - Alignment: Center
/// - Margin Bottom: 20 px
///
/// ### Icon
/// - Icon Name: `check-circle-2`
/// - Icon Size: 58 px
/// - Icon Color: `#1F3A87`
/// - Alignment: Center
///
/// ## 3. Success Message Section
///
/// ### Main Heading
/// - Text: Order Placed Successfully!
/// - Font Family: Poppins
/// - Font Size: 24 px
/// - Font Weight: SemiBold
/// - Text Color: `#1F3A87`
/// - Text Alignment: Center
/// - Top Spacing: 8 px
/// - Bottom Spacing: 8 px
///
/// ### Subtitle
/// - Text: Thank you for shopping with OpticSuit. Your order has been
/// confirmed.
/// - Font Size: 14 px
/// - Font Weight: Regular
/// - Text Color: `#6B7280`
/// - Text Alignment: Center
/// - Maximum Lines: 3
/// - Bottom Spacing: 24 px
///
/// ## 4. Order Details Card
///
/// ### Container
/// - Width: Infinity
/// - Background Color: `#F7F8FA`
/// - Border Color: `#E5E7EB`
/// - Border Width: 1 px
/// - Border Radius: 14 px
/// - Padding: 16 px
/// - Margin Bottom: 24 px
///
/// ### Card Heading
/// - Text: Order Summary
/// - Font Size: 17 px
/// - Font Weight: SemiBold
/// - Text Color: `#1F3A87`
/// - Bottom Spacing: 16 px
///
/// ### Order Information Rows
///
/// **Order Number**
/// - Label: Order Number
/// - Value: Actual order number from the backend
/// - Example format: `#ORD-XXXXX`
/// - Icon: `receipt-text`
///
/// **Order Date**
/// - Label: Order Date
/// - Value: Actual order creation date
/// - Icon: `calendar-days`
///
/// **Payment Method**
/// - Label: Payment Method
/// - Value: Actual selected payment method
/// - Icon: `credit-card`
///
/// **Payment Status**
/// - Label: Payment Status
/// - Value: Actual verified payment status
/// - Icon: `shield-check`
/// - Confirmed Status Color: `#16A34A`
/// - Pending Status Color: `#D97706`
/// - Failed Status Color: `#D92D20`
///
/// **Total Amount**
/// - Label: Total Amount
/// - Value: Actual final order total
/// - Font Size: 20 px
/// - Font Weight: Bold
/// - Text Color: `#1F3A87`
///
/// ### Row Styling
/// - Layout: Row
/// - Main Axis Alignment: Space Between
/// - Vertical Padding: 10 px
/// - Label Font Size: 13 px
/// - Label Color: `#6B7280`
/// - Value Font Size: 14 px
/// - Value Color: `#1F2937`
/// - Divider Color: `#E5E7EB`
///
/// ## 5. Delivery Information Card
///
/// ### Container
/// - Background Color: `#FFFFFF`
/// - Border Color: `#E5E7EB`
/// - Border Width: 1 px
/// - Border Radius: 12 px
/// - Padding: 16 px
/// - Margin Bottom: 24 px
///
/// ### Heading
/// - Text: Delivery Information
/// - Icon: `map-pin`
/// - Icon Color: `#1F3A87`
/// - Font Size: 16 px
/// - Font Weight: SemiBold
///
/// ### Details
/// - Customer Name: Actual delivery recipient name
/// - Delivery Address: Actual selected shipping address
/// - Phone Number: Actual delivery contact number
/// - Estimated Delivery: Display only when a valid estimate is available
///
/// ### Layout
/// - Use a Column for the card.
/// - Use Text widgets for the recipient name and address.
/// - Use suitable spacing between each field.
/// - Allow the address to wrap onto multiple lines.
///
/// ## 6. Order Confirmation Message
///
/// ### Container
/// - Background Color: `#E9EFEA`
/// - Border Radius: 12 px
/// - Padding: 14 px
/// - Margin Bottom: 24 px
///
/// ### Content
/// - Icon: `package-check`
/// - Icon Color: `#1F3A87`
/// - Title: What's Next?
/// - Description: You can track your order to check its latest status and
/// delivery progress.
/// - Title Font Size: 15 px
/// - Description Font Size: 13 px
/// - Text Color: `#1F2937`
///
/// ## 7. Track My Order Button
///
/// ### Button
/// - Text: Track My Order
/// - Width: Infinity
/// - Height: 52 px
/// - Background Color: `#1F3A87`
/// - Text Color: `#FFFFFF`
/// - Font Size: 15 px
/// - Font Weight: SemiBold
/// - Border Radius: 12 px
/// - Icon: `truck`
/// - Icon Color: `#FFFFFF`
///
/// ### Action
/// - Navigate to `OrderTrackingPage`.
/// - Pass the actual order ID as a page parameter.
/// - Load the tracking information for the selected order.
/// - If tracking information is not yet available, display the current order
/// status instead.
///
/// ## 8. Continue Shopping Button
///
/// ### Button
/// - Text: Continue Shopping
/// - Width: Infinity
/// - Height: 52 px
/// - Background Color: `#FFFFFF`
/// - Border Color: `#1F3A87`
/// - Border Width: 1 px
/// - Text Color: `#1F3A87`
/// - Font Size: 15 px
/// - Font Weight: SemiBold
/// - Border Radius: 12 px
/// - Top Spacing: 12 px
///
/// ### Action
/// - Navigate to the Shop or Home page.
/// - Preserve the customer's authenticated session.
///
/// ## 9. View Order Details Link
///
/// - Text: View Order Details
/// - Font Size: 14 px
/// - Font Weight: Medium
/// - Text Color: `#1F3A87`
/// - Alignment: Center
/// - Top Spacing: 16 px
/// - Action: Navigate to `OrderDetailsPage`.
/// - Pass the actual order ID.
///
/// ## 10. FlutterFlow Widget Hierarchy
///
/// OrderSuccessPage
/// - SafeArea
///   - SingleChildScrollView
///     - Padding
///       - Column
///         - Success Icon Container
///           - Icon: check-circle-2
///         - Text: Order Placed Successfully!
///         - Text: Confirmation Subtitle
///         - Order Summary Card
///           - Text: Order Summary
///           - Order Number Row
///           - Order Date Row
///           - Payment Method Row
///           - Payment Status Row
///           - Divider
///           - Total Amount Row
///         - Delivery Information Card
///           - Heading Row
///           - Customer Name
///           - Delivery Address
///           - Phone Number
///           - Estimated Delivery
///         - What's Next Card
///           - Icon: package-check
///           - Title
///           - Description
///         - Button: Track My Order
///         - Button: Continue Shopping
///         - Text Button: View Order Details
///
/// ## 11. Complete Color Palette
/// - Primary Blue: `#1F3A87`
/// - Secondary Blue: `#3155A6`
/// - Light Green Background: `#E9EFEA`
/// - Card Background: `#F7F8FA`
/// - Main Background: `#FFFFFF`
/// - Primary Text: `#1F2937`
/// - Secondary Text: `#6B7280`
/// - Border Color: `#E5E7EB`
/// - Success Green: `#16A34A`
/// - Pending Orange: `#D97706`
/// - Error Red: `#D92D20`
///
/// ## 12. Typography
/// - Font Family: Poppins
/// - Main Heading: 24 px, SemiBold
/// - Section Heading: 16–17 px, SemiBold
/// - Order Number: 14 px, Medium
/// - Body Text: 13–14 px, Regular
/// - Total Amount: 20 px, Bold
/// - Button Text: 15 px, SemiBold
///
/// ## 13. Responsive Design
/// - Use SafeArea to prevent overlap with system bars.
/// - Use a single-column layout on mobile.
/// - Keep horizontal padding between 16 and 20 px.
/// - Use Expanded or Flexible for row values where needed.
/// - Allow long addresses and order IDs to wrap or truncate appropriately.
/// - Keep buttons full width.
/// - Enable vertical scrolling on smaller screens.
/// - Avoid fixed heights for cards containing variable text.
///
/// ## 14. Backend and Functionality
/// - Receive the actual order ID after order creation.
/// - Fetch the order details from the connected backend.
/// - Display the correct order number, total amount, date, address and
/// payment method.
/// - Display payment status based on verified backend data.
/// - Show the success page only after the order has been successfully
/// created.
/// - For Cash on Delivery, show the order confirmation and the correct
/// payment status, such as Payment Pending.
/// - For online payments, verify the payment result before showing Payment
/// Successful.
/// - Prevent duplicate order creation when a user refreshes the page or
/// returns from payment.
/// - Do not use sample order information in the live app.
/// - Display loading and error states when order information cannot be
/// retrieved.Design settings
/// Component	Settings
/// Page background	#FFFFFF
/// Primary color	#1F3A87
/// Success icon background	#E9EFEA
/// Success icon	check-circle-2
/// Main heading	Poppins SemiBold, 24 px
/// Subtitle	Poppins Regular, 14 px
/// Order card	#F7F8FA, radius 12 px
/// Primary button	Deep blue, white text
/// Secondary button	White background, blue border
/// Page padding	20 pxOrderSuccessPage
///
/// SafeArea
///
/// Column
///
/// 1. Success Icon Container
///
/// 2. Order Placed Successfully! Text
///
/// 3. Confirmation Subtitle
///
/// 4. Order Details Card
///
/// 5. Track My Order Button
///
/// 6. Continue Shopping ButtonOrder Placed Successfully!
/// Thank you for shopping with OpticSuit. Your order has been confirmed.
///
/// Order Number
///
/// #ORD-XXXXX
///
/// Order Date
///
/// 19 Oct 2026
///
/// Payment Status
///
/// Confirmed
///
/// Total Amount
///
/// ₹1,499
/// Track My Order
///
/// Continue Shopping
class OrderSuccessWidget extends StatefulWidget {
  const OrderSuccessWidget({super.key});

  static String routeName = 'OrderSuccess';
  static String routePath = 'orderSuccess';

  @override
  State<OrderSuccessWidget> createState() => _OrderSuccessWidgetState();
}

class _OrderSuccessWidgetState extends State<OrderSuccessWidget> {
  late OrderSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderSuccessModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OrderSuccess'});
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 32.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFE9EFEA),
                              borderRadius: BorderRadius.circular(50.0),
                              shape: BoxShape.rectangle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.check_circle_outline_rounded,
                              color: Color(0xFF1F3A87),
                              size: 58.0,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Order Placed Successfully!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF1F3A87),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      Container(
                        height: 8.0,
                      ),
                      Text(
                        'Thank you for shopping with OpticSuit. Your order has been confirmed.',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF6B7280),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      Container(
                        height: 24.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(14.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Order Summary',
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
                                            color: Color(0xFF1F3A87),
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Container(
                                      height: 16.0,
                                    ),
                                    wrapWithModel(
                                      model: _model.summaryRowModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SummaryRow3Widget(
                                        icon: Icon(
                                          Icons.receipt_long_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 18.0,
                                        ),
                                        label: 'Order Number',
                                        value: '#ORD-77291',
                                        valueColor: Color(0x00000000),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.summaryRowModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SummaryRow3Widget(
                                        icon: Icon(
                                          Icons.calendar_today_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 18.0,
                                        ),
                                        label: 'Order Date',
                                        value: '19 Oct 2026',
                                        valueColor: Color(0x00000000),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.summaryRowModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SummaryRow3Widget(
                                        icon: Icon(
                                          Icons.credit_card_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 18.0,
                                        ),
                                        label: 'Payment Method',
                                        value: 'Credit Card',
                                        valueColor: Color(0x00000000),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.summaryRowModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SummaryRow3Widget(
                                        icon: Icon(
                                          Icons.verified_user_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 18.0,
                                        ),
                                        label: 'Payment Status',
                                        value: 'Confirmed',
                                        valueColor: Color(0xFF16A34A),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Total Amount',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            '₹1,499',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1F3A87),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.help,
                                          color: Color(0xFF1F3A87),
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Delivery Information',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF1F2937),
                                                fontSize: 16.0,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Alex Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1F2937),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            '124 Emerald Heights, North Wing, 4th Floor, Bangalore, KA 560001',
                                            maxLines: 3,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF6B7280),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            '+91 98765 43210',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF6B7280),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            'Est. Delivery: 22 Oct 2026',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF16A34A),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE9EFEA),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.inventory_2_rounded,
                                      color: Color(0xFF1F3A87),
                                      size: 24.0,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'What\'s Next?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1F2937),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            'You can track your order to check its latest status and delivery progress.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1F2937),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          height: 16.0,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Continue Shopping',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 52.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF1F3A87),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
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
