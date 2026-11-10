import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_account_page_model.dart';
export 'delete_account_page_model.dart';

class DeleteAccountPageWidget extends StatefulWidget {
  const DeleteAccountPageWidget({super.key});

  static String routeName = 'DeleteAccountPage';
  static String routePath = 'deleteAccountPage';

  @override
  State<DeleteAccountPageWidget> createState() =>
      _DeleteAccountPageWidgetState();
}

class _DeleteAccountPageWidgetState extends State<DeleteAccountPageWidget> {
  late DeleteAccountPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteAccountPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DeleteAccountPage'});
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
          leading: FlutterFlowIconButton(
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF1F3A87),
              size: 22.0,
            ),
            onPressed: () async {
              logFirebaseEvent('DELETE_ACCOUNT_arrow_back_rounded_ICN_ON');
              logFirebaseEvent('IconButton_navigate_to');

              context.pushNamed(SettingsWidget.routeName);
            },
          ),
          title: Text(
            'Delete Account',
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
          centerTitle: false,
          toolbarHeight: 60.0,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: (FFCrossAxisAlignment.stretch).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
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
                        Container(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Container(
                                width: 104.0,
                                height: 104.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFF0F1),
                                  borderRadius: BorderRadius.circular(52.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.person_remove_outlined,
                                  color: Color(0xFFDC3545),
                                  size: 44.0,
                                ),
                              ),
                              Container(
                                width: 114.0,
                                height: 114.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(57.0),
                                  border: Border.all(
                                    color: Color(0xFFFFDADD),
                                    width: 1.0,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                              ),
                            ],
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
                              'Are you sure you want to leave?',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              'We\'re sorry to see you go. Deleting your account will permanently remove your account information.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6F8),
                            borderRadius: BorderRadius.circular(14.0),
                            border: Border.all(
                              color: Color(0xFFE5E7EB),
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment:
                                  (FFMainAxisAlignment.start).flutterValue,
                              crossAxisAlignment:
                                  (FFCrossAxisAlignment.stretch).flutterValue,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'What happens when you delete your account?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF1F2937),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      (FFMainAxisAlignment.start).flutterValue,
                                  crossAxisAlignment:
                                      (FFCrossAxisAlignment.center)
                                          .flutterValue,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Icon(
                                      Icons.person_off_outlined,
                                      color: Color(0xFF1F3A87),
                                      size: 18.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your personal information will be removed.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF4B5563),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      (FFMainAxisAlignment.start).flutterValue,
                                  crossAxisAlignment:
                                      (FFCrossAxisAlignment.center)
                                          .flutterValue,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Icon(
                                      Icons.location_off_outlined,
                                      color: Color(0xFF1F3A87),
                                      size: 18.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your saved addresses and preferences will be deleted.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF4B5563),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      (FFMainAxisAlignment.start).flutterValue,
                                  crossAxisAlignment:
                                      (FFCrossAxisAlignment.center)
                                          .flutterValue,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Icon(
                                      Icons.history_rounded,
                                      color: Color(0xFF1F3A87),
                                      size: 18.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'You may lose access to your order history.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF4B5563),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
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
                              'Reason for leaving',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dropdownValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                'I don\'t use the app anymore',
                                'Poor user experience',
                                'Found another service',
                                'Privacy concerns',
                                'Other'
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropdownValue = val),
                              height: 52.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Select a reason (optional)',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: Color(0xFFF3F5F8),
                              elevation: 2.0,
                              borderColor: Color(0xFFE5E7EB),
                              borderWidth: 1.0,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                    crossAxisAlignment:
                        (FFCrossAxisAlignment.center).flutterValue,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Delete My Account',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 52.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFDC3545),
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
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'DELETE_ACCOUNT_PAGE_PAGE_Button_ON_TAP');
                          logFirebaseEvent('Button_navigate_back');
                          context.pop();
                        },
                        text: 'Keep My Account',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 52.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
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
                                    color: Color(0xFF1F3A87),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Color(0xFFE5E7EB),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
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
