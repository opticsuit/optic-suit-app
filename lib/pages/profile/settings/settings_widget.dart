import '/components/section_header3_widget.dart';
import '/components/setting_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

/// # Settings Page – OpticSuit Ecommerce App
///
/// ## 1.
///
/// Page Header
/// - Page Name: Settings
/// - Back Arrow Icon: arrow-left
/// - Header Height: 56 px
/// - Background Color: #FFFFFF
/// - Title: Settings
/// - Title Font: Poppins SemiBold, 20 px
/// - Title Color: #1F3A87
/// - Horizontal Padding: 20 px
///
/// ## 2. Main Page Layout
/// - Widget: SingleChildScrollView
/// - Child: Column
/// - Page Background: #FFFFFF
/// - Horizontal Padding: 20 px
/// - Top Padding: 16 px
/// - Bottom Padding: 100 px
/// - Section Spacing: 24 px
///
/// ## 3. ACCOUNT SETTINGS
///
/// ### Section Heading
/// - Text: ACCOUNT SETTINGS
/// - Font: Poppins SemiBold
/// - Font Size: 12 px
/// - Text Color: #1F3A87
/// - Letter Spacing: 1 px
/// - Bottom Spacing: 12 px
///
/// ### Item 1: Personal Information
/// - Icon: user-round
/// - Title: Personal Information
/// - Subtitle: Name, email and phone number
/// - Icon Color: #1F3A87
/// - Icon Background: #E9EFEA
/// - Action: Navigate to Personal Information Page
///
/// ### Item 2: Change Password
/// - Icon: lock-keyhole
/// - Title: Change Password
/// - Subtitle: Update your password
/// - Icon Color: #1F3A87
/// - Icon Background: #E9EFEA
/// - Action: Navigate to Change Password Page
///
/// ### Item 3: Address Management
/// - Icon: map-pin
/// - Title: Address Management
/// - Subtitle: Manage delivery addresses
/// - Icon Color: #1F3A87
/// - Icon Background: #E9EFEA
/// - Action: Navigate to My Addresses Page
///
/// ## 4. PREFERENCES
///
/// ### Section Heading
/// - Text: PREFERENCES
/// - Font Size: 12 px
/// - Font Weight: SemiBold
/// - Text Color: #1F3A87
/// - Letter Spacing: 1 px
/// - Bottom Spacing: 12 px
///
/// ### Item 1: Notifications
/// - Icon: bell
/// - Title: Notifications
/// - Subtitle: Manage app notifications
/// - Icon Color: #1F3A87
/// - Icon Background: #E9EFEA
/// - Trailing Widget: Chevron Right
/// - Action: Navigate to Notification Settings Page
///
/// ### Item 2: Language
/// - Icon: globe
/// - Title: Language
/// - Subtitle: Choose your language
/// - Icon Color: #1F3A87
/// - Icon Background: #E9EFEA
/// - Trailing Widget: Chevron Right
/// - Action: Open Language Selection Dialog
///
/// ## 5. PRIVACY & SECURITY
///
/// ### Section Heading
/// - Text: PRIVACY & SECURITY
/// - Font Size: 12 px
/// - Font Weight: SemiBold
/// - Text Color: #1F3A87
/// - Letter Spacing: 1 px
/// - Bottom Spacing: 12 px
///
/// ### Item 1: Privacy Policy
/// - Icon: shield-check
/// - Title: Privacy Policy
/// - Subtitle: Learn how we protect your data
/// - Icon Color: #1F3A87
/// - Action: Navigate to Privacy Policy Page
///
/// ### Item 2: Terms & Conditions
/// - Icon: file-text
/// - Title: Terms & Conditions
/// - Subtitle: Read our terms of service
/// - Icon Color: #1F3A87
/// - Action: Navigate to Terms & Conditions Page
///
/// ### Item 3: Delete Account
/// - Icon: trash-2
/// - Title: Delete Account
/// - Subtitle: Permanently delete your account
/// - Icon Color: #D92D20
/// - Title Color: #D92D20
/// - Action: Open Delete Account Confirmation Dialog
///
/// ## 6. Setting Item Component
///
/// ### Container
/// - Width: Infinity
/// - Height: 76 px
/// - Background Color: #FFFFFF
/// - Border Radius: 12 px
/// - Padding: 12 px
/// - Margin Bottom: 8 px
///
/// ### Row Layout
/// - Main Axis: Start
/// - Cross Axis: Center
/// - Children: Icon Container + Text Column + Chevron Icon
/// - Spacing: 12 px
///
/// ### Icon Container
/// - Width: 44 px
/// - Height: 44 px
/// - Background Color: #E9EFEA
/// - Border Radius: 12 px
/// - Alignment: Center
///
/// ### Main Icon
/// - Icon Size: 22 px
/// - Icon Color: #1F3A87
///
/// ### Text Column
/// - Main Axis: Center
/// - Cross Axis: Start
/// - Expanded: True
///
/// ### Item Title
/// - Font Family: Poppins
/// - Font Size: 14 px
/// - Font Weight: Medium
/// - Text Color: #1F2937
///
/// ### Item Subtitle
/// - Font Family: Poppins
/// - Font Size: 12 px
/// - Font Weight: Regular
/// - Text Color: #6B7280
/// - Top Spacing: 4 px
///
/// ### Trailing Icon
/// - Icon: chevron-right
/// - Icon Size: 18 px
/// - Icon Color: #9CA3AF
///
/// ## 7. Color Palette
///
/// - Primary Deep Blue: #1F3A87
/// - Secondary Blue: #3155A6
/// - Icon Background: #E9EFEA
/// - Main Background: #FFFFFF
/// - Main Text: #1F2937
/// - Subtitle Text: #6B7280
/// - Divider: #E5E7EB
/// - Danger Red: #D92D20
///
/// ## 8. Typography
/// - Font Family: Poppins
/// - Page Title: 20 px, SemiBold
/// - Section Heading: 12 px, SemiBold
/// - Item Title: 14 px, Medium
/// - Item Subtitle: 12 px, Regular
/// - Button Text: 14 px, SemiBold
///
/// ## 9. FlutterFlow Widget Hierarchy
///
/// SettingsPage
/// - SafeArea
///   - Column
///     - Header Row
///       - IconButton: Back Arrow
///       - Text: Settings
///     - Expanded
///       - SingleChildScrollView
///         - Column
///           - Account Settings Section
///             - Section Heading
///             - Setting Item: Personal Information
///             - Setting Item: Change Password
///             - Setting Item: Address Management
///           - Preferences Section
///             - Section Heading
///             - Setting Item: Notifications
///             - Setting Item: Language
///           - Privacy & Security Section
///             - Section Heading
///             - Setting Item: Privacy Policy
///             - Setting Item: Terms & Conditions
///             - Setting Item: Delete Account
///
/// ## 10. Navigation & Functionality
/// - Back Arrow → Navigate Back
/// - Personal Information → Personal Information Page
/// - Change Password → Change Password Page
/// - Address Management → My Addresses Page
/// - Notifications → Notification Settings Page
/// - Language → Language Selection Dialog
/// - Privacy Policy → Privacy Policy Page
/// - Terms & Conditions → Terms Page
/// - Delete Account → Confirmation Dialog
///
/// ## 11. Delete Account Dialog
/// - Title: Delete Account?
/// - Description: Are you sure you want to permanently delete your account?
/// This action cannot be undone.
/// - Cancel Button: #E9EFEA
/// - Cancel Text: #1F3A87
/// - Delete Button: #D92D20
/// - Delete Text: #FFFFFF
/// - Require explicit confirmation before account deletion.
///
/// ## 12. Responsive Design
/// - Mobile Layout: Single Column
/// - Minimum Side Padding: 16 px
/// - Maximum Content Width: 600 px
/// - Enable Vertical Scrolling
/// - Prevent Text Overflow
/// - Maintain consistent spacing and alignment.
class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  static String routeName = 'Settings';
  static String routePath = 'settings';

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Settings'});
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
          title: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('SETTINGS_PAGE_Text_ON_TAP');
              logFirebaseEvent('Text_navigate_to');

              context.pushNamed(ProfileWidget.routeName);
            },
            child: Text(
              'Settings',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    font: GoogleFonts.poppins(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                    color: Color(0xFF1F3A87),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
            ),
          ),
          actions: [],
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
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 32.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeader3Widget(
                                      title: 'ACCOUNT SETTINGS',
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context.pushNamed(
                                          PersonalInformationEditPageWidget
                                              .routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.person_outline_rounded,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0x00000000),
                                        title: 'Personal Information',
                                        titleColor: Color(0x00000000),
                                        subtitle:
                                            'Name, email and phone number',
                                        showChevron: false,
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.settingItemModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingItemWidget(
                                      icon: Icon(
                                        Icons.lock_outline_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 22.0,
                                      ),
                                      iconColor: Color(0x00000000),
                                      title: 'Change Password',
                                      titleColor: Color(0x00000000),
                                      subtitle: 'Update your password',
                                      showChevron: false,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context.pushNamed(
                                          SavedAddressWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0x00000000),
                                        title: 'Address Management',
                                        titleColor: Color(0x00000000),
                                        subtitle: 'Manage delivery addresses',
                                        showChevron: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeader3Widget(
                                      title: 'PREFERENCES',
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context.pushNamed(
                                          NotificationsWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.notifications_none_rounded,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0x00000000),
                                        title: 'Notifications',
                                        titleColor: Color(0x00000000),
                                        subtitle: 'Manage app notifications',
                                        showChevron: false,
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
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context
                                          .pushNamed(LanguageWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.language_rounded,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0x00000000),
                                        title: 'Language',
                                        titleColor: Color(0x00000000),
                                        subtitle: 'Choose your language',
                                        showChevron: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeader3Widget(
                                      title: 'PRIVACY & SECURITY',
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context.pushNamed(
                                          PrivacyPolicyWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.shield_outlined,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0x00000000),
                                        title: 'Privacy Policy',
                                        titleColor: Color(0x00000000),
                                        subtitle:
                                            'Learn how we protect your data',
                                        showChevron: false,
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
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context.pushNamed(
                                          TermsConditionsWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.description_outlined,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0x00000000),
                                        title: 'Terms & Conditions',
                                        titleColor: Color(0x00000000),
                                        subtitle: 'Read our terms of service',
                                        showChevron: false,
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
                                          'SETTINGS_PAGE_SettingItem_ON_TAP');
                                      logFirebaseEvent(
                                          'SettingItem_navigate_to');

                                      context.pushNamed(
                                          DeleteAccountPageWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingItemModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingItemWidget(
                                        icon: Icon(
                                          Icons.delete_outline_rounded,
                                          color: Color(0xFF1F3A87),
                                          size: 22.0,
                                        ),
                                        iconColor: Color(0xFF1F3A87),
                                        title: 'Delete Account',
                                        titleColor: Color(0xFF222222),
                                        subtitle:
                                            'Permanently delete your account',
                                        showChevron: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 24.0)),
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
