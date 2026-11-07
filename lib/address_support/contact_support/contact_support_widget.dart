import '/components/contact_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contact_support_model.dart';
export 'contact_support_model.dart';

/// # AL-FARABI E-COMMERCE APP
/// ## Contact Support Page – Detailed Design Plan
///
/// ### 1.
///
/// Page Overview
///
/// - Page Name: ContactSupportPage
/// - Platform: FlutterFlow Mobile App
/// - Design Style: Clean, Minimal, Modern E-commerce UI
/// - Font Family: Poppins
/// - Primary Color: #1F3A87
/// - Light Theme: #E9EFEA
/// - Page Background: #F0F0F0
/// - Card Background: #FFFFFF
/// - Primary Text: #222222
/// - Secondary Text: #777777
/// - Border Color: #D9DEE7
///
/// ### 2. Page Layout
///
/// - Widget: Scaffold
/// - Background Color: #F0F0F0
/// - Body: SingleChildScrollView
/// - Scroll Direction: Vertical
/// - Horizontal Padding: 20 px
/// - Top Padding: 20 px
/// - Bottom Padding: 24 px
/// - Content Alignment: Center
/// - Avoid unnecessary empty space.
/// - Ensure the page is responsive on different mobile screen sizes.
///
/// ### 3. AppBar Component
///
/// Widget: AppBar
///
/// - Height: 56 px
/// - Background Color: #E9EFEA
/// - Elevation: 0
/// - Leading Icon: arrow_back_ios_new
/// - Icon Size: 22 px
/// - Icon Color: #1F3A87
/// - Title: Contact Support
/// - Font Family: Poppins
/// - Font Size: 20 px
/// - Font Weight: SemiBold (600)
/// - Title Color: #1F3A87
/// - Title Alignment: Left
/// - Back Action: Navigate back to the previous page.
///
/// ### 4. Introduction / Welcome Card
///
/// Create a white rounded card below the AppBar.
///
/// Container:
/// - Width: Full available width
/// - Height: Auto
/// - Background Color: #FFFFFF
/// - Border Radius: 16 px
/// - Border: None
/// - Padding: 20 px
/// - Alignment: Center
/// - Bottom Spacing: 20 px
///
/// Headset Icon:
/// - Icon Name: headset
/// - Size: 36 px
/// - Color: #1F3A87
/// - Icon Container: 72 × 72 px
/// - Icon Container Background: #E9EFEA
/// - Icon Container Radius: 36 px
/// - Alignment: Center
///
/// Heading:
/// - Text: How can we help you?
/// - Font Family: Poppins
/// - Font Size: 18 px
/// - Font Weight: SemiBold (600)
/// - Color: #222222
/// - Alignment: Center
/// - Top Spacing: 12 px
///
/// Description:
/// - Text: Choose a contact method and our support team will assist you.
/// - Font Size: 13 px
/// - Font Weight: Regular (400)
/// - Color: #777777
/// - Text Alignment: Center
/// - Line Height: 1.4
/// - Top Spacing: 6 px
///
/// ### 5. Contact Options Section
///
/// Section Heading:
/// - Text: Contact Us
/// - Font Size: 18 px
/// - Font Weight: SemiBold
/// - Color: #1F3A87
/// - Font Family: Poppins
/// - Bottom Spacing: 12 px
///
/// Create one white container with three contact rows.
///
/// Contact Container:
/// - Width: Full available width
/// - Height: Auto
/// - Background Color: #FFFFFF
/// - Border Radius: 16 px
/// - Padding: 12 px
/// - Border: None
///
/// Each Contact Row:
/// - Width: Full
/// - Minimum Height: 72 px
/// - Layout: Row
/// - Cross Axis Alignment: Center
/// - Horizontal Gap: 12 px
/// - Padding: 8 px
/// - Background: #FFFFFF
///
/// Icon Container:
/// - Width: 48 px
/// - Height: 48 px
/// - Border Radius: 12 px
/// - Background Color: #E9EFEA
/// - Icon Size: 24 px
/// - Icon Color: #1F3A87
/// - Alignment: Center
///
/// Text Column:
/// - Main Text Font Size: 14 px
/// - Main Text Font Weight: Medium (500)
/// - Main Text Color: #222222
/// - Description Font Size: 12 px
/// - Description Font Weight: Regular (400)
/// - Description Color: #777777
/// - Main Text to Description Gap: 4 px
///
/// Trailing Icon:
/// - Icon Name: chevron_right
/// - Size: 20 px
/// - Color: #819B98
///
/// Spacing Between Rows:
/// - 8 px
///
/// Add a Divider between rows:
/// - Color: #E5E7EB
/// - Height: 1 px
/// - Left and Right Spacing: 8 px
///
/// ### 6. WhatsApp Support Component
///
/// Row Title:
/// - Text: WhatsApp Support
///
/// Description:
/// - Text: Chat with our support team
///
/// Leading Icon:
/// - Icon Name: message_circle
/// - Size: 24 px
/// - Color: #1F3A87
/// - Background: #E9EFEA
///
/// Trailing Icon:
/// - Icon Name: chevron_right
/// - Size: 20 px
///
/// Interaction:
/// - Entire row must be clickable.
/// - Configure an Open URL action using the official support WhatsApp link.
/// - Use the verified support phone number in international format.
/// - Example URL format: https://wa.me/COUNTRYCODENUMBER
/// - Replace the placeholder with the actual verified number before enabling
/// the action.
/// - Do not use a personal number without authorization.
///
/// ### 7. Call Us Component
///
/// Row Title:
/// - Text: Call Us
///
/// Description:
/// - Text: Speak directly with our support team
///
/// Leading Icon:
/// - Icon Name: phone
/// - Size: 24 px
/// - Color: #1F3A87
/// - Background: #E9EFEA
///
/// Trailing Icon:
/// - Icon Name: chevron_right
/// - Size: 20 px
///
/// Interaction:
/// - Entire row must be clickable.
/// - Configure an Open URL action using the tel: scheme.
/// - Example format: tel:+COUNTRYCODEPHONENUMBER
/// - Replace the placeholder with the verified official support number.
/// - Open the device dialer when the user taps this row.
///
/// ### 8. Email Support Component
///
/// Row Title:
/// - Text: Email Support
///
/// Description:
/// - Text: Send us your questions by email
///
/// Leading Icon:
/// - Icon Name: mail
/// - Size: 24 px
/// - Color: #1F3A87
/// - Background: #E9EFEA
///
/// Trailing Icon:
/// - Icon Name: chevron_right
/// - Size: 20 px
///
/// Interaction:
/// - Entire row must be clickable.
/// - Configure an Open URL action using the mailto: scheme.
/// - Example format: mailto:support@example.com
/// - Replace the example with the verified official support email.
/// - Open the user's default email application.
///
/// ### 9. Support Availability Section (Optional)
///
/// Add this component only when the business has confirmed its support hours.
///
/// Container:
/// - Width: Full available width
/// - Background Color: #FFFFFF
/// - Border Radius: 12 px
/// - Padding: 16 px
/// - Top Spacing: 16 px
///
/// Icon:
/// - Icon Name: clock
/// - Size: 22 px
/// - Color: #1F3A87
///
/// Heading:
/// - Text: Support Hours
/// - Font Size: 15 px
/// - Font Weight: SemiBold
/// - Color: #222222
///
/// Supporting Text:
/// - Display the verified business support days and hours.
/// - Font Size: 13 px
/// - Color: #777777
///
/// Do not display invented working hours or claim 24/7 availability.
///
/// ### 10. Bottom Information Text
///
/// Text:
/// Need help with an order? Keep your order ID ready when contacting our
/// support team.
///
/// - Font Family: Poppins
/// - Font Size: 12 px
/// - Font Weight: Regular
/// - Text Color: #777777
/// - Text Alignment: Center
/// - Line Height: 1.4
/// - Top Spacing: 20 px
/// - Bottom Spacing: 12 px
///
/// ### 11. Complete Widget Tree
///
/// Scaffold
/// - AppBar
///   - Back Icon
///   - Text: Contact Support
/// - SingleChildScrollView
///   - Padding: 20 px
///   - Column
///     - Welcome Card
///       - Icon Container
///         - Headset Icon
///       - Text: How can we help you?
///       - Text: Description
///     - Text: Contact Us
///     - Contact Options Container
///       - WhatsApp Support Row
///       - Divider
///       - Call Us Row
///       - Divider
///       - Email Support Row
///     - Optional Support Hours Card
///     - Bottom Information Text
///
/// ### 12. Navigation and Functionality
///
/// - Back Icon: Navigate to the previous page.
/// - WhatsApp Row: Open official support WhatsApp chat.
/// - Call Row: Open the phone dialer with the official support number.
/// - Email Row: Open the default email application with the official support
/// email.
/// - Support Hours: Display verified business hours only.
/// - Contact methods should work only after their real destination details
/// are configured.
/// - Show a helpful fallback message if a contact application cannot be
/// opened.
/// - Ensure the page remains scrollable on small screens.
///
/// ### 13. Final Design Checklist
///
/// - Consistent AL-Farabi color theme.
/// - Same font family and typography as other app pages.
/// - Equal icon container sizes.
/// - Consistent spacing between contact rows.
/// - Clearly visible clickable areas.
/// - No duplicate FAQ section.
/// - No fake contact numbers or email addresses.
/// - Responsive layout with no overflow.
/// - Test WhatsApp, Call, Email and Back actions before marking the page
/// complete.lutterFlow Design Specifications
/// Component	Properties
/// Page Background	#F0F0F0
/// AppBar	Height 56 px, white background
/// Page Padding	20 px left and right
/// Welcome Card	Full width, padding 20 px, radius 16 px
/// Headset Icon	60 × 60 px white circle, icon color #1F3A87
/// Contact Card	White background, radius 12 px, border #E0E4E8
/// Contact Row	Minimum height 76 px, horizontal layout
/// Contact Icon Container	46 × 46 px, background #E9EFEA, radius 10 px
/// Main Heading	Poppins, 18 px, SemiBold, #1F3A87
/// Row Title	Poppins, 15 px, Medium, #222222
/// Description	Poppins, 12–13 px, Regular, #777777
/// Bottom Info Card	Background #E9EFEA, padding 14 px, radius 10 px
/// 2. Widget Tree
/// ContactSupportPage
///
///  AppBar — Back Arrow + Title
///  SingleChildScrollView
/// • Welcome Support Card
/// • Contact Us Heading
/// • Contact Options Container
/// – WhatsApp Support Row
/// – Call Us Row
/// – Email Support Row
///
/// • Order Help Information Card3. Button Actions
/// - WhatsApp Support: Open the official support WhatsApp chat.
/// - Call Us: Open the phone dialer with the support number.
/// - Email Support: Open the email app with the support email address.
/// - Back Arrow: Navigate back to the Help & Support page.
class ContactSupportWidget extends StatefulWidget {
  const ContactSupportWidget({super.key});

  static String routeName = 'ContactSupport';
  static String routePath = 'contactSupport';

  @override
  State<ContactSupportWidget> createState() => _ContactSupportWidgetState();
}

class _ContactSupportWidgetState extends State<ContactSupportWidget> {
  late ContactSupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactSupportModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ContactSupport'});
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
        backgroundColor: Color(0xFFF0F0F0),
        appBar: AppBar(
          backgroundColor: Color(0xFFE9EFEA),
          automaticallyImplyLeading: false,
          title: Text(
            'Contact Support',
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 72.0,
                                height: 72.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE9EFEA),
                                  borderRadius: BorderRadius.circular(9999.0),
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.headset_rounded,
                                  color: Color(0xFF1F3A87),
                                  size: 36.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'How can we help you?',
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
                                          color: Color(0xFF222222),
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
                                  Text(
                                    'Choose a contact method and our support team will assist you.',
                                    textAlign: TextAlign.center,
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
                                          color: Color(0xFF777777),
                                          fontSize: 13.0,
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
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Contact Us',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
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
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.contactRowModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ContactRowWidget(
                                      icon: FaIcon(
                                        FaIconData(const IconData(
                                            /* whatsappSquare */ 0xf40c,
                                            fontFamily: 'FontAwesomeBrands',
                                            fontPackage:
                                                'font_awesome_flutter')),
                                        color: Color(0xFF1F3A87),
                                        size: 24.0,
                                      ),
                                      title: 'WhatsApp Support',
                                      subtitle: 'Chat with our support team',
                                      isLast: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.contactRowModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ContactRowWidget(
                                      icon: Icon(
                                        Icons.phone_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 24.0,
                                      ),
                                      title: 'Call Us',
                                      subtitle:
                                          'Speak directly with our support team',
                                      isLast: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.contactRowModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ContactRowWidget(
                                      icon: Icon(
                                        Icons.mail_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 24.0,
                                      ),
                                      title: 'Email Support',
                                      subtitle:
                                          'Send us your questions by email',
                                      isLast: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.schedule_rounded,
                                color: Color(0xFF1F3A87),
                                size: 22.0,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Support Hours',
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
                                          color: Color(0xFF222222),
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Text(
                                    'Monday - Friday: 9:00 AM - 6:00 PM',
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
                                          color: Color(0xFF777777),
                                          fontSize: 13.0,
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
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE9EFEA),
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Container(
                          child: Text(
                            'Need help with an order? Keep your order ID ready when contacting our support team.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF777777),
                                  fontSize: 12.0,
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
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
