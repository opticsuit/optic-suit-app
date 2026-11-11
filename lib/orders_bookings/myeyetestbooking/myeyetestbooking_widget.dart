import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'myeyetestbooking_model.dart';
export 'myeyetestbooking_model.dart';

/// 1.
///
/// Page Structure
/// MyEyeTestBookingsPage
/// │
/// ├── SafeArea
/// │
/// ├── 1. AppBar
/// │   ├── Back Icon
/// │   └── Text: My Eye Test Bookings
/// │
/// └── 2. Scrollable Content
///     │
///     ├── Upcoming Bookings Section
///     │   ├── Section Title
///     │   ├── Upcoming Booking Card
///     │   ├── Upcoming Booking Card
///     │   └── ...
///     │
///     └── Past Bookings Section
///         ├── Section Title
///         ├── Past Booking Card
///         ├── Past Booking Card
///         └── ...
///
/// Important: Upcoming Bookings + Past Bookings same page-ൽ തന്നെ ആയിരിക്കും.
/// 2. Page Background
/// Container / Page
/// - Width: 100%
/// - Height: 100%
/// - Background: #F7F8FA
/// Use:
/// Scaffold
/// └── SafeArea
///
/// 3. AppBar
/// Container
/// - Width: 100%
/// - Height: 64 px
/// - Background: #FFFFFF
/// - Padding Left/Right: 16 px
/// Row:
/// Row
/// ├── IconButton
/// │   └── Back Icon
/// │
/// └── Text
///     └── My Eye Test Bookings
///
/// Back Icon
/// - Icon: arrow_back
/// - Size: 24 px
/// - Color: #1F2937
/// Title
/// My Eye Test Bookings
/// - Font Size: 20 px
/// - Font Weight: 600 / SemiBold
/// - Color: #1F2937
/// 4. Scrollable Content
/// AppBar-ന്റെ താഴെ:
/// Expanded
/// └── SingleChildScrollView
///     └── Padding
///         └── Column
///
/// Padding:
/// - Left: 16 px
/// - Right: 16 px
/// - Top: 20 px
/// - Bottom: 24 px
/// 5. Upcoming Bookings Section
/// Section Title:
/// Upcoming Bookings
/// - Font Size: 18 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Spacing:
/// - Bottom: 12 px
/// 6. Upcoming Booking Card
/// Main Container:
/// - Width: 100%
/// - Background: #FFFFFF
/// - Border Radius: 16 px
/// - Padding: 16 px
/// - Border: 1 px #E5E7EB
/// - Shadow: Subtle
/// - Margin Bottom: 12 px
/// 6.1 Booking Header
/// Row
/// ├── Column
/// │   ├── Eye Test
/// │   └── Booking #APT-10245
/// │
/// └── Status Badge
///
/// Eye Test
/// - Font Size: 16 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Booking ID
/// Example:
/// Booking #APT-10245
/// - Font Size: 12 px
/// - Color: #6B7280
/// 7. Confirmed Status Badge
/// Text:
/// ● Confirmed
/// Container:
/// - Height: 28 px
/// - Padding Horizontal: 10 px
/// - Background: #ECFDF3
/// - Border Radius: 14 px
/// Text:
/// - Font Size: 11–12 px
/// - Font Weight: 500
/// - Color: #16A34A
/// 8. Store / Location
/// Row:
/// Row
/// ├── Location Icon
/// └── Column
///     ├── Store Name
///     └── Location
///
/// Example:
/// Optic Suit – Kozhikode
/// Kozhikode, Kerala
/// Store Name
/// - Font Size: 14 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Location
/// - Font Size: 12–13 px
/// - Color: #6B7280
/// Icon
/// - Icon: location_on
/// - Size: 20 px
/// - Color: #1F3A87
/// 9. Date & Time
/// Row:
/// Row
/// ├── Date
/// │   ├── Calendar Icon
/// │   └── 05 Oct 2026
/// │
/// └── Time
///     ├── Clock Icon
///     └── 11:00 AM
///
/// Date
/// 05 Oct 2026
/// - Font Size: 13 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Time
/// 11:00 AM
/// - Font Size: 13 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Icons:
/// - Calendar: calendar_today
/// - Time: access_time
/// - Size: 18–20 px
/// - Color: #1F3A87
/// 10. Divider
/// Divider
///
/// - Color: #E5E7EB
/// - Thickness: 1 px
/// - Margin Top/Bottom: 12 px
/// 11. Booking Action Buttons
/// Row:
/// Row
/// ├── Expanded
/// │   └── Reschedule
/// │
/// └── Expanded
///     └── Cancel Booking
///
/// Gap:
/// 8 px
/// Reschedule
/// - Height: 40 px
/// - Background: #1F3A87
/// - Text: #FFFFFF
/// - Font Size: 13 px
/// - Font Weight: 500
/// - Border Radius: 8 px
/// Text:
/// Reschedule
/// Cancel Booking
/// - Height: 40 px
/// - Background: #FFFFFF
/// - Border: 1 px #FCA5A5
/// - Text: #DC2626
/// - Font Size: 13 px
/// - Font Weight: 500
/// - Border Radius: 8 px
/// Text:
/// Cancel Booking
/// 12. Upcoming Booking Example
/// Upcoming Bookings
///
/// ┌─────────────────────────────────┐
/// │ Eye Test           ● Confirmed  │
/// │ Booking #APT-10245              │
/// │                                 │
/// │ 📍 Optic Suit – Kozhikode       │
/// │    Kozhikode, Kerala            │
/// │                                 │
/// │ 📅 05 Oct 2026   🕐 11:00 AM   │
/// │                                 │
/// │ ─────────────────────────────── │
/// │                                 │
/// │ [ Reschedule ] [ Cancel Booking]│
/// └─────────────────────────────────┘
///
/// 13. Past Bookings Section
/// Upcoming bookings എല്ലാം കഴിഞ്ഞതിന് ശേഷം:
/// Spacing:
/// 24 px
/// Section Title:
/// Past Bookings
/// - Font Size: 18 px
/// - Font Weight: 600
/// - Color: #1F2937
/// 14. Past Booking Card
/// Main Container:
/// - Width: 100%
/// - Background: #FFFFFF
/// - Border Radius: 16 px
/// - Padding: 16 px
/// - Border: 1 px #E5E7EB
/// - Margin Bottom: 12 px
/// Structure:
/// Past Booking Card
/// │
/// ├── Booking Header
/// │   ├── Eye Test
/// │   ├── Booking ID
/// │   └── Completed Badge
/// │
/// ├── Store / Location
/// │
/// └── Date & Time
///
/// 15. Completed Badge
/// Text:
/// ● Completed
/// Container:
/// - Height: 28 px
/// - Padding Horizontal: 10 px
/// - Background: #F1F5F9
/// - Border Radius: 14 px
/// Text:
/// - Font Size: 11–12 px
/// - Color: #64748B
/// 16. Past Booking Example
/// Past Bookings
///
/// ┌─────────────────────────────────┐
/// │ Eye Test            ● Completed │
/// │ Booking #APT-10120              │
/// │                                 │
/// │ 📍 Optic Suit – Malappuram      │
/// │    Malappuram, Kerala           │
/// │                                 │
/// │ 📅 28 Sep 2026   🕐 03:00 PM   │
/// └─────────────────────────────────┘
///
/// Past booking-ൽ Reschedule / Cancel buttons വേണ്ട.
/// 17. Empty State – No Upcoming Bookings
/// Upcoming appointment ഇല്ലെങ്കിൽ:
///               👁️
///
///        No Upcoming Eye Tests
///
/// You don't have any upcoming
/// eye test appointments.
///
///        [ Book an Eye Test ]
///
/// Icon
/// - Size: 64 × 64 px
/// - Color: #1F3A87
/// Title
/// - Font Size: 18–20 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Description
/// - Font Size: 13–14 px
/// - Color: #6B7280
/// - Center aligned
/// Button
/// Book an Eye Test
/// - Width: 160 px
/// - Height: 44 px
/// - Background: #1F3A87
/// - Text: #FFFFFF
/// - Border Radius: 10 px
/// Action:
/// Book an Eye Test
///        ↓
/// Book Eye Test Page
///
/// 18. FlutterFlow Widget Tree
/// Scaffold
/// │
/// └── SafeArea
///     │
///     └── Column
///         │
///         ├── AppBar Container
///         │   └── Row
///         │       ├── IconButton
///         │       │   └── arrow_back
///         │       │
///         │       └── Text
///         │           └── My Eye Test Bookings
///         │
///         └── Expanded
///             │
///             └── SingleChildScrollView
///                 │
///                 └── Padding
///                     │
///                     └── Column
///                         │
///                         ├── Text
///                         │   └── Upcoming Bookings
///                         │
///                         ├── Upcoming Booking Card
///                         │   ├── Booking Header
///                         │   ├── Store / Location
///                         │   ├── Date & Time
///                         │   ├── Divider
///                         │   └── Action Buttons
///                         │       ├── Reschedule
///                         │       └── Cancel Booking
///                         │
///                         ├── Text
///                         │   └── Past Bookings
///                         │
///                         ├── Past Booking Card
///                         │   ├── Booking Header
///                         │   ├── Store / Location
///                         │   └── Date & Time
///                         │
///                         └── More Booking Cards
///
/// 🎨 Complete Color Palette
/// Element	Color
/// Primary	#1F3A87
/// Page Background	#F7F8FA
/// Card Background	#FFFFFF
/// Main Text	#1F2937
/// Secondary Text	#6B7280
/// Border	#E5E7EB
/// Confirmed	#16A34A
/// Confirmed BG	#ECFDF3
/// Completed	#64748B
/// Completed BG	#F1F5F9
/// Cancel	#DC2626
/// Cancel Border	#FCA5A5
/// 🔗 Final Customer Flow
/// Home / Profile
///       ↓
/// Book Eye Test
///       ↓
/// Select Store / Location
///       ↓
/// Select Date
///       ↓
/// Select Time
///       ↓
/// Enter Name / Phone / Address
///       ↓
/// Confirm Appointment
///       ↓
/// Booking Created
///       ↓
/// My Eye Test Bookings
///       │
///       ├── Upcoming Bookings
///       │      ├── Reschedule
///       │      └── Cancel Booking
///       │
///       └── Past Bookings
///              └── Completed
///
/// Final Concept
/// ith full 1 pageil alle design
/// 📱 Single Page: MyEyeTestBookingsPage
/// ┌───────────────────────────────┐
/// │ ←  My Eye Test Bookings       │
/// ├───────────────────────────────┤
/// │                               │
/// │ Upcoming Bookings             │
/// │                               │
/// │ ┌───────────────────────────┐ │
/// │ │ Eye Test     ● Confirmed  │ │
/// │ │ Booking #APT-10245        │ │
/// │ │                           │ │
/// │ │ 📍 Optic Suit – Kozhikode │ │
/// │ │    Kozhikode, Kerala      │ │
/// │ │                           │ │
/// │ │ 📅 05 Oct 2026            │ │
/// │ │ 🕐 11:00 AM               │ │
/// │ │                           │ │
/// │ │ ────────────────────────  │ │
/// │ │ [Reschedule] [Cancel]     │ │
/// │ └───────────────────────────┘ │
/// │                               │
/// │ Past Bookings                 │
/// │                               │
/// │ ┌───────────────────────────┐ │
/// │ │ Eye Test    ● Completed   │ │
/// │ │ Booking #APT-10120        │ │
/// │ │                           │ │
/// │ │ 📍 Optic Suit – Malappuram│ │
/// │ │    Malappuram, Kerala     │ │
/// │ │                           │ │
/// │ │ 📅 28 Sep 2026            │ │
/// │ │ 🕐 03:00 PM               │ │
/// │ └───────────────────────────┘ │
/// │                               │
/// │ ┌───────────────────────────┐ │
/// │ │ Eye Test    ● Completed   │ │
/// │ │ Booking #APT-10098        │ │
/// │ │                           │ │
/// │ │ 📍 Optic Suit – Kozhikode │ │
/// │ │ 📅 20 Sep 2026            │ │
/// │ │ 🕐 11:00 AM               │ │
/// │ └───────────────────────────┘ │
/// │                               │
/// └───────────────────────────────┘
///
/// FlutterFlow structure
class MyeyetestbookingWidget extends StatefulWidget {
  const MyeyetestbookingWidget({super.key});

  static String routeName = 'Myeyetestbooking';
  static String routePath = 'myeyetestbooking';

  @override
  State<MyeyetestbookingWidget> createState() => _MyeyetestbookingWidgetState();
}

class _MyeyetestbookingWidgetState extends State<MyeyetestbookingWidget> {
  late MyeyetestbookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyeyetestbookingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Myeyetestbooking'});
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
        backgroundColor: Color(0xFFF8F9FC),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
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
                                  'MYEYETESTBOOKING_PAGE_IconButton_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.pushNamed(ProfileWidget.routeName);
                            },
                          ),
                          Expanded(
                            child: Text(
                              'My Eye Test Bookings',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF202633),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.visibility_outlined,
                            color: Color(0xFF1F3A87),
                            size: 22.0,
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE2E5EB),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment:
                            (FFMainAxisAlignment.start).flutterValue,
                        crossAxisAlignment:
                            (FFCrossAxisAlignment.stretch).flutterValue,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Upcoming Bookings',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF202633),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: Color(0xFFE2E5EB),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        (FFMainAxisAlignment.start)
                                            .flutterValue,
                                    crossAxisAlignment:
                                        (FFCrossAxisAlignment.center)
                                            .flutterValue,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Container(
                                        width: 46.0,
                                        height: 46.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF0F1F5),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.event_available_outlined,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              (FFMainAxisAlignment.start)
                                                  .flutterValue,
                                          crossAxisAlignment:
                                              (FFCrossAxisAlignment.start)
                                                  .flutterValue,
                                          textBaseline: TextBaseline.alphabetic,
                                          children: [
                                            Text(
                                              'No upcoming bookings',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                        color:
                                                            Color(0xFF202633),
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
                                                      ),
                                            ),
                                            Text(
                                              'Your scheduled eye tests will appear here.',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                        color:
                                                            Color(0xFF737B89),
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
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 14.0)),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 14.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Past Bookings',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF202633),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: Color(0xFFE2E5EB),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        (FFMainAxisAlignment.start)
                                            .flutterValue,
                                    crossAxisAlignment:
                                        (FFCrossAxisAlignment.center)
                                            .flutterValue,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Container(
                                        width: 46.0,
                                        height: 46.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF0F1F5),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.history_rounded,
                                          color: Color(0xFF737B89),
                                          size: 22.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              (FFMainAxisAlignment.start)
                                                  .flutterValue,
                                          crossAxisAlignment:
                                              (FFCrossAxisAlignment.start)
                                                  .flutterValue,
                                          textBaseline: TextBaseline.alphabetic,
                                          children: [
                                            Text(
                                              'No past bookings',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                        color:
                                                            Color(0xFF202633),
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
                                                      ),
                                            ),
                                            Text(
                                              'Completed eye test appointments will appear here.',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                        color:
                                                            Color(0xFF737B89),
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
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 14.0)),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 14.0)),
                          ),
                        ].divide(SizedBox(height: 24.0)),
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
