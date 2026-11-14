import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'personal_information_edit_page_model.dart';
export 'personal_information_edit_page_model.dart';

/// Personal Information — Edit Page Design Plan
///
/// Personal Information
/// Manage your personal details
/// Full Name
/// Enter your full name
///
/// Email Address
/// Enter your email address
///
/// Phone Number
/// +91 Enter phone number
///
/// Date of Birth (Optional)
/// Select date of birth
/// Save Changes
/// UI reference: Optic Suit theme · Poppins font · Mobile-first layout
///
/// 1.
///
/// Page settings
/// - Page Name: EditProfilePage
/// - AppBar Title: Personal Information
/// - Background: #FFFFFF
/// - Primary color: #1F3A87
/// - Secondary background: #E9EFEA
/// - Font: Poppins
/// - Horizontal padding: 20 px
/// 2. Fields and dimensions
/// Element	Width	Height
/// Full Name TextField	Infinity	52 px
/// Email Address TextField	Infinity	52 px
/// Phone Number TextField	Infinity	52 px
/// Date of Birth field	Infinity	52 px
/// Save Changes button	Infinity	52 px
/// - Field border: #E5E7EB, 1 px
/// - Border radius: 10 px
/// - Field text: 14 px, Regular
/// - Label: 14 px, Medium
/// - Space between fields: 18 px
/// - Save button: Blue background, white text, 15 px Semi Bold, radius 12 px
/// 3. FlutterFlow-il create cheyyenda structure
/// 1. Scaffold add cheyyuka.
/// 2. Reusable appbar component add cheythu title Personal Information set
/// cheyyuka.
/// 3. SafeArea-inte ullil SingleChildScrollView add cheyyuka.
/// 4. Padding → Column add cheythu Name, Email, Phone, Date of Birth fields
/// arrange cheyyuka.
/// 5. Bottom-il full-width Save Changes button add cheyyuka.
///
/// 4. Button actions
/// - Save Changes: Validate fields → save updated details to the user's
/// backend/database → show success message.
/// - Email / Phone: Verified account details aanenkil changes save
/// cheyyunnathinu munpu verification process add cheyyuka.
/// - Back button: Previous Profile or Settings page-lekku return cheyyuka.
class PersonalInformationEditPageWidget extends StatefulWidget {
  const PersonalInformationEditPageWidget({super.key});

  static String routeName = 'PersonalInformationEditPage';
  static String routePath = 'personalInformationEditPage';

  @override
  State<PersonalInformationEditPageWidget> createState() =>
      _PersonalInformationEditPageWidgetState();
}

class _PersonalInformationEditPageWidgetState
    extends State<PersonalInformationEditPageWidget> {
  late PersonalInformationEditPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalInformationEditPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PersonalInformationEditPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PERSONAL_INFORMATION_EDIT_PersonalInform');
      logFirebaseEvent('PersonalInformationEditPage_update_page_');
      _model.selectedDateOfBirth = getCurrentTimestamp;
      safeSetState(() {});
      logFirebaseEvent('PersonalInformationEditPage_update_page_');
      _model.loadingProfile = true;
      safeSetState(() {});
      logFirebaseEvent('PersonalInformationEditPage_custom_actio');
      _model.profileToken = await actions.getWooJwt(
        context,
      );
      if ((_model.profileToken == null || _model.profileToken == '') ||
          (_model.profileToken == '')) {
        logFirebaseEvent('PersonalInformationEditPage_update_page_');
        _model.loadingProfile = false;
        safeSetState(() {});
        logFirebaseEvent('PersonalInformationEditPage_show_snack_b');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Your session has expired. Sign in again to load your profile.',
              style: TextStyle(),
            ),
            duration: Duration(milliseconds: 4000),
          ),
        );
        return;
      }
      logFirebaseEvent('PersonalInformationEditPage_backend_call');
      _model.profileResponse = await WooGetProfileCall.call(
        token: _model.profileToken,
      );

      if ((_model.profileResponse?.succeeded ?? true)) {
        if (((_model.profileResponse?.statusCode ?? 200) == 200 &&
            (WooGetProfileCall.success(
                  (_model.profileResponse?.jsonBody ?? ''),
                )!) ==
                true)!) {
          logFirebaseEvent('PersonalInformationEditPage_update_page_');
          _model.profileFullName = (dynamic a0) {
            return (a0 ?? '').trim();
          }(WooGetProfileCall.fullName(
            (_model.profileResponse?.jsonBody ?? ''),
          ));
          safeSetState(() {});
          if (_model.profileFullName == '') {
            logFirebaseEvent('PersonalInformationEditPage_update_page_');
            _model.profileFullName = (dynamic a0, dynamic a1, dynamic a2) {
              return ((a0 ?? '').trim() +
                      ((a1 ?? '').trim() == '' ? '' : ' ${(a2 ?? '').trim()}'))
                  .trim();
            }(
                WooGetProfileCall.firstName(
                  (_model.profileResponse?.jsonBody ?? ''),
                ),
                WooGetProfileCall.lastName(
                  (_model.profileResponse?.jsonBody ?? ''),
                ),
                WooGetProfileCall.lastName(
                  (_model.profileResponse?.jsonBody ?? ''),
                ));
            safeSetState(() {});
          }
          logFirebaseEvent('PersonalInformationEditPage_set_form_fie');
          safeSetState(() {
            _model.fullNameTextController?.text = _model.profileFullName!;
          });
          logFirebaseEvent('PersonalInformationEditPage_update_page_');
          _model.profileEmail = (dynamic a0) {
            return (a0 ?? '').trim();
          }(WooGetProfileCall.email(
            (_model.profileResponse?.jsonBody ?? ''),
          ));
          safeSetState(() {});
          logFirebaseEvent('PersonalInformationEditPage_set_form_fie');
          safeSetState(() {
            _model.emailAddressTextController?.text = _model.profileEmail!;
          });
          logFirebaseEvent('PersonalInformationEditPage_update_page_');
          _model.profilePhone = (dynamic a0) {
            return (a0 ?? '').trim();
          }(WooGetProfileCall.billingPhone(
            (_model.profileResponse?.jsonBody ?? ''),
          ));
          safeSetState(() {});
          logFirebaseEvent('PersonalInformationEditPage_update_app_s');
          FFAppState().profilePhoneInternational = _model.profilePhone!;
          safeSetState(() {});
          if (!(((dynamic a0) {
                return (a0 ?? '').trim();
              }(WooGetProfileCall.dateOfBirth(
                (_model.profileResponse?.jsonBody ?? ''),
              ))) ==
              '')) {
            logFirebaseEvent('PersonalInformationEditPage_update_page_');
            _model.selectedDateOfBirth =
                functions.wooProfileDate(WooGetProfileCall.dateOfBirth(
              (_model.profileResponse?.jsonBody ?? ''),
            ).toString());
            safeSetState(() {});
            logFirebaseEvent('PersonalInformationEditPage_update_page_');
            _model.hasSelectedDateOfBirth = true;
            safeSetState(() {});
          } else {
            logFirebaseEvent('PersonalInformationEditPage_update_page_');
            _model.hasSelectedDateOfBirth = false;
            safeSetState(() {});
          }
        } else {
          logFirebaseEvent('PersonalInformationEditPage_show_snack_b');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Unable to load your profile. Please try again.',
                style: TextStyle(),
              ),
              duration: Duration(milliseconds: 4000),
            ),
          );
        }

        logFirebaseEvent('PersonalInformationEditPage_update_page_');
        _model.loadingProfile = false;
        safeSetState(() {});
      } else {
        logFirebaseEvent('PersonalInformationEditPage_update_page_');
        _model.loadingProfile = false;
        safeSetState(() {});
        logFirebaseEvent('PersonalInformationEditPage_show_snack_b');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Unable to load your profile. Check your connection and try again.',
              style: TextStyle(),
            ),
            duration: Duration(milliseconds: 4000),
          ),
        );
      }
    });

    _model.fullNameTextController ??=
        TextEditingController(text: _model.profileFullName);
    _model.fullNameFocusNode ??= FocusNode();

    _model.emailAddressTextController ??=
        TextEditingController(text: _model.profileEmail);
    _model.emailAddressFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          leading: FlutterFlowIconButton(
            buttonSize: 40.0,
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xFF1F3A87),
              size: 22.0,
            ),
            onPressed: () async {
              logFirebaseEvent('PERSONAL_INFORMATION_EDIT_IconButton_ON_');
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: Text(
            'Personal Information',
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
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          toolbarHeight: 60.0,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    children: [
                      if (_model.loadingProfile ?? true)
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: CircularPercentIndicator(
                            percent: 0.0,
                            radius: 14.0,
                            lineWidth: 3.0,
                            animation: false,
                            animateFromLastPercent: true,
                          ),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                            (FFMainAxisAlignment.start).flutterValue,
                        crossAxisAlignment:
                            (FFCrossAxisAlignment.center).flutterValue,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Container(
                                width: 104.0,
                                height: 104.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F6F8),
                                  borderRadius: BorderRadius.circular(52.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    if (_model.selectedAvatar == 'male')
                                      Icon(
                                        Icons.face_3,
                                        color: FlutterFlowTheme.of(context)
                                            .lensBlue,
                                        size: 64.0,
                                      ),
                                    if (_model.selectedAvatar == 'female')
                                      Icon(
                                        Icons.face_6,
                                        color: FlutterFlowTheme.of(context)
                                            .lensBlue,
                                        size: 64.0,
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.center).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.center).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'PERSONAL_INFORMATION_EDIT_Container_ON_T');
                                  logFirebaseEvent(
                                      'Container_update_page_state');
                                  _model.selectedAvatar = 'male';
                                  safeSetState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: _model.selectedAvatar == 'male'
                                          ? Color(0xFF1F3A87)
                                          : Color(0xFFE0E0E0),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.center)
                                              .flutterValue,
                                      crossAxisAlignment:
                                          (FFCrossAxisAlignment.center)
                                              .flutterValue,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Icon(
                                          Icons.face_3,
                                          color: FlutterFlowTheme.of(context)
                                              .lensBlue,
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Male Avatar',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
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
                                        if (_model.selectedAvatar == 'male')
                                          Icon(
                                            Icons.check_circle,
                                            color: FlutterFlowTheme.of(context)
                                                .lensBlue,
                                            size: 18.0,
                                          ),
                                      ].divide(SizedBox(width: 6.0)),
                                    ),
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
                                      'PERSONAL_INFORMATION_EDIT_Container_ON_T');
                                  logFirebaseEvent(
                                      'Container_update_page_state');
                                  _model.selectedAvatar = 'female';
                                  safeSetState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: _model.selectedAvatar == 'female'
                                          ? Color(0xFF1F3A87)
                                          : Color(0xFFE0E0E0),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.center)
                                              .flutterValue,
                                      crossAxisAlignment:
                                          (FFCrossAxisAlignment.center)
                                              .flutterValue,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Icon(
                                          Icons.face_6,
                                          color: FlutterFlowTheme.of(context)
                                              .lensBlue,
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Female Avatar',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
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
                                        if (_model.selectedAvatar == 'female')
                                          Icon(
                                            Icons.check_circle,
                                            color: FlutterFlowTheme.of(context)
                                                .lensBlue,
                                            size: 18.0,
                                          ),
                                      ].divide(SizedBox(width: 6.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          Text(
                            'Update your profile details',
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
                                  color: Color(0xFF666666),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                            (FFMainAxisAlignment.start).flutterValue,
                        crossAxisAlignment:
                            (FFCrossAxisAlignment.stretch).flutterValue,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Full Name',
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
                                      color: Color(0xFF333333),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.fullNameTextController,
                                  focusNode: _model.fullNameFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.fullNameTextController',
                                    Duration(milliseconds: 2000),
                                    () async {
                                      logFirebaseEvent(
                                          'PERSONAL_INFORMATION_EDIT_fullName_ON_TE');
                                      logFirebaseEvent(
                                          'fullName_update_page_state');
                                      _model.profileFullName =
                                          _model.fullNameTextController.text;
                                      safeSetState(() {});
                                    },
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
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
                                    hintText: 'Enter your full name',
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
                                        color: Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
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
                                        color: Color(0xFF333333),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  cursorColor: Color(0xFF1F3A87),
                                  validator: _model
                                      .fullNameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Email Address',
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
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.emailAddressTextController,
                              focusNode: _model.emailAddressFocusNode,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Enter your email address',
                                hintStyle: FlutterFlowTheme.of(context)
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
                                      color: Color(0xFF666666),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E0E0),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
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
                                    color: Color(0xFF333333),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              cursorColor: Color(0xFF1F3A87),
                              validator: _model
                                  .emailAddressTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Phone Number',
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
                                      color: Color(0xFF333333),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                child: custom_widgets.InternationalPhoneInput(
                                  initialValue: _model.profilePhone!,
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Date of Birth (Optional)',
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
                                      color: Color(0xFF333333),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0xFFE0E0E0),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'PERSONAL_INFORMATION_EDIT_ContainerPaddi');
                                      logFirebaseEvent(
                                          'ContainerPadding_date_time_picker');
                                      final _datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate:
                                            (_model.selectedDateOfBirth ??
                                                DateTime.now()),
                                        firstDate: DateTime(1900),
                                        lastDate: (getCurrentTimestamp ??
                                            DateTime(2050)),
                                      );

                                      if (_datePickedDate != null) {
                                        safeSetState(() {
                                          _model.datePicked = DateTime(
                                            _datePickedDate.year,
                                            _datePickedDate.month,
                                            _datePickedDate.day,
                                          );
                                        });
                                      } else if (_model.datePicked != null) {
                                        safeSetState(() {
                                          _model.datePicked =
                                              _model.selectedDateOfBirth;
                                        });
                                      }
                                      logFirebaseEvent(
                                          'ContainerPadding_update_page_state');
                                      _model.selectedDateOfBirth =
                                          _model.datePicked;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'ContainerPadding_update_page_state');
                                      _model.hasSelectedDateOfBirth = true;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            _model.hasSelectedDateOfBirth!
                                                ? dateTimeFormat(
                                                    "dd/MM/yyyy",
                                                    _model.selectedDateOfBirth,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  )
                                                : 'Select date of birth',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
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
                                                  color: _model
                                                          .hasSelectedDateOfBirth!
                                                      ? Colors.black
                                                      : Color(0xFF808080),
                                                  fontSize: 14.0,
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
                                          Icon(
                                            Icons.calendar_today_rounded,
                                            color: Color(0xFF1F3A87),
                                            size: 18.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 18.0)),
                      ),
                      Container(
                        width: double.infinity,
                        height: 52.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: FFButtonWidget(
                          onPressed: (_model.savingProfile! ||
                                  _model.loadingProfile!)
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'PERSONAL_INFORMATION_EDIT_Button_ON_TAP');
                                  var _shouldSetState = false;
                                  if (_model.savingProfile! ||
                                      _model.loadingProfile!) {
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                  if ((_model.fullNameTextController.text
                                          .trim()) ==
                                      '') {
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Enter your full name to continue.',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                      ),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                  if ((FFAppState()
                                          .profilePhoneInternational
                                          .trim()) ==
                                      '') {
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Enter a valid phone number to continue.',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                      ),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                  logFirebaseEvent('Button_update_page_state');
                                  _model.savingProfile = true;
                                  safeSetState(() {});
                                  logFirebaseEvent('Button_custom_action');
                                  _model.profileToken2 =
                                      await actions.getWooJwt(
                                    context,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.profileToken2 == null ||
                                          _model.profileToken2 == '') ||
                                      (_model.profileToken2 == '')) {
                                    logFirebaseEvent(
                                        'Button_update_page_state');
                                    _model.savingProfile = false;
                                    safeSetState(() {});
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Your session has expired. Sign in again to save your profile.',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                      ),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                  logFirebaseEvent('Button_backend_call');
                                  _model.wooUpdateProfileDslRes0 =
                                      await WooUpdateProfileCall.call(
                                    token: _model.profileToken2,
                                    fullName:
                                        _model.fullNameTextController.text,
                                    billingPhone:
                                        FFAppState().profilePhoneInternational,
                                    dateOfBirth: _model.hasSelectedDateOfBirth!
                                        ? dateTimeFormat(
                                            "yyyy-MM-dd",
                                            _model.selectedDateOfBirth,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )
                                        : '',
                                  );

                                  _shouldSetState = true;
                                  if ((_model
                                          .wooUpdateProfileDslRes0?.succeeded ??
                                      true)) {
                                    if (((_model.wooUpdateProfileDslRes0
                                                    ?.statusCode ??
                                                200) ==
                                            200 &&
                                        (WooUpdateProfileCall.success(
                                              (_model.wooUpdateProfileDslRes0
                                                      ?.jsonBody ??
                                                  ''),
                                            )!) ==
                                            true)!) {
                                      logFirebaseEvent('Button_show_snack_bar');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Profile updated successfully',
                                            style: TextStyle(),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                        ),
                                      );
                                      logFirebaseEvent(
                                          'Button_update_page_state');
                                      _model.profileFullName = (dynamic a0) {
                                        return (a0 ?? '').trim();
                                      }(WooUpdateProfileCall.fullName(
                                        (_model.wooUpdateProfileDslRes0
                                                ?.jsonBody ??
                                            ''),
                                      ));
                                      safeSetState(() {});
                                      if (_model.profileFullName == '') {
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.profileFullName = (dynamic a0,
                                                dynamic a1, dynamic a2) {
                                          return ((a0 ?? '').trim() +
                                                  ((a1 ?? '').trim() == ''
                                                      ? ''
                                                      : ' ${(a2 ?? '').trim()}'))
                                              .trim();
                                        }(
                                            WooUpdateProfileCall.firstName(
                                              (_model.wooUpdateProfileDslRes0
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            WooUpdateProfileCall.lastName(
                                              (_model.wooUpdateProfileDslRes0
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            WooUpdateProfileCall.lastName(
                                              (_model.wooUpdateProfileDslRes0
                                                      ?.jsonBody ??
                                                  ''),
                                            ));
                                        safeSetState(() {});
                                      }
                                      if (_model.profileFullName != '') {
                                        logFirebaseEvent(
                                            'Button_set_form_field');
                                        safeSetState(() {
                                          _model.fullNameTextController?.text =
                                              _model.profileFullName!;
                                        });
                                      }
                                      logFirebaseEvent(
                                          'Button_update_page_state');
                                      _model.profilePhone =
                                          WooUpdateProfileCall.billingPhone(
                                                (_model.wooUpdateProfileDslRes0
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString() ??
                                              (_model.profilePhone!);
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'Button_update_app_state');
                                      FFAppState().profilePhoneInternational =
                                          _model.profilePhone!;
                                      safeSetState(() {});
                                      if (!(((dynamic a0) {
                                            return (a0 ?? '').trim();
                                          }(WooUpdateProfileCall.dateOfBirth(
                                            (_model.wooUpdateProfileDslRes0
                                                    ?.jsonBody ??
                                                ''),
                                          ))) ==
                                          '')) {
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.selectedDateOfBirth = functions
                                            .wooProfileDate(WooUpdateProfileCall
                                                .dateOfBirth(
                                          (_model.wooUpdateProfileDslRes0
                                                  ?.jsonBody ??
                                              ''),
                                        ).toString());
                                        safeSetState(() {});
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.hasSelectedDateOfBirth = true;
                                        safeSetState(() {});
                                      }
                                    } else {
                                      logFirebaseEvent('Button_show_snack_bar');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Profile update failed (HTTP ${(_model.wooUpdateProfileDslRes0?.statusCode ?? 200).toString()}): ${(_model.wooUpdateProfileDslRes0?.bodyText ?? '')}',
                                            style: TextStyle(),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                        ),
                                      );
                                    }

                                    logFirebaseEvent(
                                        'Button_update_page_state');
                                    _model.savingProfile = false;
                                    safeSetState(() {});
                                  } else {
                                    logFirebaseEvent(
                                        'Button_update_page_state');
                                    _model.savingProfile = false;
                                    safeSetState(() {});
                                    logFirebaseEvent('Button_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Profile update failed (HTTP ${(_model.wooUpdateProfileDslRes0?.statusCode ?? 200).toString()}): ${(_model.wooUpdateProfileDslRes0?.bodyText ?? '')} ${(_model.wooUpdateProfileDslRes0?.exceptionMessage ?? '')}',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                      ),
                                    );
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                          text: 'Save Changes',
                          options: FFButtonOptions(
                            height: 52.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF1F3A87),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
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
                          showLoadingIndicator: _model.savingProfile!,
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
