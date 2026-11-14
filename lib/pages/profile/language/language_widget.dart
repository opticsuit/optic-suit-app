import '/components/language_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'language_model.dart';
export 'language_model.dart';

/// 1.
///
/// Page settings
/// Property	Value
/// Page Name	LanguagePage
/// AppBar Title	Language
/// Background	#FFFFFF
/// Primary Color	#1F3A87
/// Secondary Background	#E9EFEA
/// Font	Poppins
/// Horizontal Padding	20 px
/// 2. Widget Tree
/// 1. Scaffold
/// 2. AppBar — reusable appbar component, title Language
/// 3. SafeArea
/// 4. Padding — 20 px
/// 5. Column
/// 6. Text — “Choose Language”
/// 7. Text — “Select your preferred app language”
/// 8. Language selection cards: English, മലയാളം, हिन्दी
/// 9. Button — Save Language
///
/// 3. Language card properties
/// - Width: Infinity
/// - Height: 76–84 px
/// - Border: 1 px
/// - Selected border color: #1F3A87
/// - Unselected border color: #E5E7EB
/// - Border radius: 12 px
/// - Horizontal padding: 12 px
/// - Gap between cards: 12 px
/// - Language text: 15 px, Semi Bold
/// - Subtitle: 12 px, Regular
/// - Selected icon: circle-check, size 22 px
/// 4. Button properties
/// - Text: Save Language
/// - Width: Infinity
/// - Height: 52 px
/// - Background: #1F3A87
/// - Text color: #FFFFFF
/// - Font: Poppins, 15 px, Semi Bold
/// - Border radius: 12 px
/// - Top margin: 24 px- Spanish
/// - French
/// - German
/// - Arabic
/// - Chinese (Simplified)
/// - Chinese (Traditional)
/// - Japanese
/// - Korean
/// - Portuguese
/// - Russian
/// - Italian
/// - Dutch
/// - Turkish
/// - Indonesian
/// - Thai
/// - Vietnamese
/// - Persian
/// - Swahili
/// - Polish
/// - Ukrainian
/// FlutterFlow settings
/// - Page Name: LanguagePage
/// - Search field: Width Infinity, Height 48 px
/// - Language card: Width Infinity, Height 64–72 px
/// - Selected border: #1F3A87
/// - Unselected border: #E5E7EB
/// - Save button: Height 52 px, radius 12 px
/// - List: ListView or scrollable Column
class LanguageWidget extends StatefulWidget {
  const LanguageWidget({super.key});

  static String routeName = 'Language';
  static String routePath = 'language';

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  late LanguageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Language'});
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
        backgroundColor: Color(0xFFF5F6FA),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            buttonSize: 40.0,
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xFF1F3A87),
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('LANGUAGE_PAGE_IconButton_ON_TAP');
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: Text(
            'Language',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.inter(
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
                  lineHeight: 1.4,
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
          centerTitle: true,
          toolbarHeight: 58.0,
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
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Choose Language',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Select your preferred app language',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
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
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.languageCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'English',
                                      subtitle: 'English',
                                      selected: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.languageCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'മലയാളം',
                                      subtitle: 'Malayalam',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.languageCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'हिन्दी',
                                      subtitle: 'Hindi',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.languageCardModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'Spanish',
                                      subtitle: 'Español',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.languageCardModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'French',
                                      subtitle: 'Français',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.languageCardModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'German',
                                      subtitle: 'Deutsch',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.languageCardModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: LanguageCardWidget(
                                      title: 'Arabic',
                                      subtitle: 'العربية',
                                      selected: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 12.0)),
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
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Save Language',
                options: FFButtonOptions(
                  height: 48.8,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF1F3A87),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
