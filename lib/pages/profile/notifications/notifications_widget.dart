import '/components/filter_chip2_widget.dart';
import '/components/notification_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

/// # Notifications Page – Design Plan
///
/// ## 1.
///
/// Page Setup
/// - Page Name: `NotificationsPage`
/// - Background Color: `#F0F0F0`
/// - Primary Color: `#1F3A87`
/// - Card Color: `#FFFFFF`
/// - Accent Color: `#E9EFEA`
/// - Font Family: Poppins
/// - Horizontal Padding: 16 px
///
/// ## 2. AppBar
/// - Height: 56 px
/// - Background: `#FFFFFF`
/// - Leading Icon: `arrow_back`
/// - Title: `Notifications`
/// - Title Size: 18 px
/// - Font Weight: SemiBold
/// - Title Color: `#1F3A87`
/// - Trailing Text: `Mark all as read`
/// - Font Size: 12 px
/// - Text Color: `#1F3A87`
///
/// ## 3. Notification Categories
/// Create a horizontal Row with three filter options:
/// - All
/// - Orders
/// - Offers
///
/// Properties:
/// - Height: 40 px
/// - Selected Background: `#1F3A87`
/// - Selected Text Color: `#FFFFFF`
/// - Unselected Background: `#FFFFFF`
/// - Unselected Text Color: `#1F3A87`
/// - Border Radius: 20 px
/// - Spacing: 8 px
///
/// ## 4. Today Section
/// - Heading: `Today`
/// - Font Size: 16 px
/// - Font Weight: SemiBold
/// - Text Color: `#222222`
/// - Bottom Spacing: 12 px
///
/// ## 5. Notification Card
///
/// ### Card Properties
/// - Width: Full width
/// - Background: `#FFFFFF`
/// - Border Radius: 12 px
/// - Padding: 14 px
/// - Spacing between cards: 10 px
///
/// ### Notification Content
/// - Icon Container: 42 × 42 px
/// - Background: `#E9EFEA`
/// - Border Radius: 10 px
/// - Title: 14 px, SemiBold
/// - Description: 12 px, Regular
/// - Time: 11 px, Color `#777777`
/// - Unread Indicator: Small circle, Color `#1F3A87`
///
/// ### Example Notifications
/// 1. **Order Confirmed**
///    - Icon: `shopping_bag`
///    - Text: Your order has been confirmed.
///    - Time: 10 min ago
///
/// 2. **Order Shipped**
///    - Icon: `local_shipping`
///    - Text: Your order is on its way.
///    - Time: 2 hours ago
///
/// 3. **Special Offer**
///    - Icon: `local_offer`
///    - Text: Check out our latest offers.
///    - Time: 5 hours ago
///
/// ## 6. Earlier Section
/// - Heading: `Earlier`
/// - Display older notifications using the same notification card design.
/// - Add date/time information for each notification.
///
/// ## 7. Empty State
/// If there are no notifications:
/// - Icon: `notifications_none`
/// - Icon Size: 48 px
/// - Icon Color: `#98A2B3`
/// - Title: `No Notifications Yet`
/// - Description: `Your order updates and offers will appear here.`
/// - Alignment: Center
///
/// ## 8. Widget Tree
/// NotificationsPage
/// - Scaffold
///   - AppBar
///     - Back Arrow
///     - Title
///     - Mark All as Read
///   - SingleChildScrollView
///     - Notification Filter Row
///     - Today Heading
///     - Notification List
///     - Earlier Heading
///     - Older Notification List
///     - Empty State
///
/// ## 9. Actions
/// - Back Arrow → Navigate Back
/// - All / Orders / Offers → Filter notifications
/// - Mark All as Read → Mark notifications as read
/// - Order notification → Navigate to Order Details
/// - Offer notification → Navigate to Offers & Wallet
///
/// ## 10. Important Note
/// Use sample notifications only for the UI preview. Actual notification
/// history, unread status and push notifications need backend/Firebase
/// integration.Create a modern, clean Notifications Page UI design for the
/// AL-FARABI eyewear e-commerce mobile app in FlutterFlow.
///
/// **Screen Layout:**
///
/// 1. **AppBar**
///    - White background
///    - Back arrow on the left
///    - Title: “Notifications”
///    - “Mark all as read” text action on the right
///
/// 2. **Notification Filter Tabs**
///    - Three horizontal tabs: All, Orders, Offers
///    - Selected tab with dark blue background
///    - Unselected tabs with white background and blue text
///    - Rounded pill-shaped design
///
/// 3. **Today Section**
///    - Section heading: “Today”
///    - White notification cards with rounded corners and subtle borders
///    - Each card contains a colored icon container, notification title,
/// description, time and unread indicator.
///
/// 4. **Notification Cards**
///    - Order Confirmed: shopping bag icon
///    - Order Shipped: delivery truck icon
///    - Special Offer: discount tag icon
///    - Example descriptions:
///      - “Your order has been confirmed.”
///      - “Your order is on its way.”
///      - “Check out our latest offers.”
///    - Display time below each description.
///
/// 5. **Earlier Section**
///    - Section heading: “Earlier”
///    - Older notification cards using the same design.
///
/// 6. **Design Style**
///    - Primary color: #1F3A87
///    - Background color: #F0F0F0
///    - Card background: #FFFFFF
///    - Light accent color: #E9EFEA
///    - Secondary text: #777777
///    - Font: Poppins
///    - Horizontal page padding: 16 px
///    - Card border radius: 12 px
///    - Icon container: 42 × 42 px
///    - Clean spacing, consistent alignment and mobile-responsive layout.
///
/// **Expected Result:** A polished, professional mobile notification screen
/// for an eyewear shopping app, matching the existing AL-FARABI app theme.
/// Show the complete mobile screen in a straight-on view, without a phone
/// mockup, and keep all UI text readable.### Notifications Page – Empty-State
/// Design
///
/// Add a clear, centered empty-state design for the AL-FARABI E-commerce App
/// Notifications Page.
///
/// **Empty-State Content**
/// - Icon: `notifications_none`
/// - Icon Container: 88 × 88 px
/// - Container Background: `#E9EFEA`
/// - Icon Size: 44 px
/// - Icon Color: `#1F3A87`
/// - Main Heading: **No Notifications Yet**
/// - Heading Font: Poppins, 20 px, SemiBold
/// - Heading Color: `#222222`
/// - Description: “Your order updates and special offers will appear here.”
/// - Description Font: Poppins, 14 px, Regular
/// - Description Color: `#777777`
/// - Text Alignment: Center
///
/// **Optional Button**
/// - Button Text: `Continue Shopping`
/// - Width: 180 px
/// - Height: 48 px
/// - Background: `#1F3A87`
/// - Text Color: `#FFFFFF`
/// - Font: Poppins, 14 px, Medium
/// - Border Radius: 12 px
///
/// **Layout**
/// - Keep the existing AppBar with the title “Notifications”.
/// - Show the empty state in the center of the remaining screen area.
/// - Use a vertical Column with centered alignment.
/// - Spacing between icon, heading and description: 16 px.
/// - Spacing before the button: 24 px.
/// - Background Color: `#F0F0F0`.
/// - Horizontal Padding: 24 px.
///
/// **Conditional Display**
/// - If the notification list is empty, display the empty-state design.
/// - If notifications exist, display the notification list instead.
/// - Hide “Mark all as read” when there are no notifications.
///
/// **Expected Result:** A clean, minimal empty state that matches the
/// existing AL-FARABI theme, with clear messaging and an optional button to
/// return to shopping.
class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  static String routeName = 'Notifications';
  static String routePath = 'notifications';

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Notifications'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NOTIFICATIONS_Notifications_ON_INIT_STAT');
      logFirebaseEvent('Notifications_navigate_back');
      context.safePop();
    });

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 60.0,
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
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        child: Container(
                          height: 60.0,
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.chevron_left,
                                      color: Color(0xFF1F3A87),
                                      size: 22.0,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'NOTIFICATIONS_PAGE_IconButton_ON_TAP');
                                      logFirebaseEvent(
                                          'IconButton_navigate_back');
                                      context.safePop();
                                    },
                                  ),
                                  Text(
                                    'Notifications',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1F3A87),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Text(
                                'Mark all as read',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F3A87),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ],
                          ),
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.filterChipModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterChip2Widget(
                                selected: true,
                                label: 'All',
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'NOTIFICATIONS_PAGE_FilterChip_ON_TAP');
                                logFirebaseEvent('FilterChip_navigate_to');

                                context.pushNamed(MyOrdersPageWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.filterChipModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterChip2Widget(
                                  selected: false,
                                  label: 'Orders',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'NOTIFICATIONS_PAGE_FilterChip_ON_TAP');
                                logFirebaseEvent('FilterChip_navigate_to');

                                context.pushNamed(OffersWalletWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.filterChipModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterChip2Widget(
                                  selected: false,
                                  label: 'Offers',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Container(
                                      child: Text(
                                        'Today',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1F3A87),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.notificationCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NotificationCardWidget(
                                      icon: Icon(
                                        Icons.shopping_bag_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      title: 'Order Confirmed',
                                      unread: true,
                                      desc: 'Your order has been confirmed.',
                                      time: '10 min ago',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.notificationCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NotificationCardWidget(
                                      icon: Icon(
                                        Icons.local_shipping_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      title: 'Order Shipped',
                                      unread: true,
                                      desc: 'Your order is on its way.',
                                      time: '2 hours ago',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.notificationCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NotificationCardWidget(
                                      icon: Icon(
                                        Icons.local_offer_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      title: 'Special Offer',
                                      unread: false,
                                      desc: 'Check out our latest offers.',
                                      time: '5 hours ago',
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Container(
                                      child: Text(
                                        'Earlier',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1F3A87),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.notificationCardModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NotificationCardWidget(
                                      icon: Icon(
                                        Icons.wallet_giftcard_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      title: 'Flash Sale',
                                      unread: false,
                                      desc:
                                          'Get 20% off on all Ray-Ban collection today!',
                                      time: 'Yesterday, 4:30 PM',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.notificationCardModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NotificationCardWidget(
                                      icon: Icon(
                                        Icons.account_circle_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      title: 'Account Update',
                                      unread: false,
                                      desc:
                                          'Your password has been changed successfully.',
                                      time: 'Oct 12, 10:15 AM',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.notificationCardModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NotificationCardWidget(
                                      icon: Icon(
                                        Icons.check_circle_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      title: 'Order Delivered',
                                      unread: false,
                                      desc:
                                          'Order #AL1092 has been delivered. Rate your product!',
                                      time: 'Oct 10, 02:20 PM',
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
