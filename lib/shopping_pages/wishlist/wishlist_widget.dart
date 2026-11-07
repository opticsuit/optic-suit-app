import '/components/wishlist_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'wishlist_model.dart';
export 'wishlist_model.dart';

/// 1.
///
/// AppBar
/// - Back Icon — 24 × 24
/// - Title: My Wishlist
/// - Wishlist Count: 12 Items
/// - Cart Icon — 24 × 24
/// - Cart badge — 18 × 18
/// AppBar Height: 56 px
/// Background: #FFFFFF
/// 2. Wishlist Header
/// My Wishlist
/// 12 items
///
/// - Title: 22 px, Semi Bold
/// - Count: 13–14 px
/// - Left padding: 20 px
/// - Top spacing: 20 px
/// 3. Wishlist Product Grid
/// 2-column Grid ആണ് best.
/// Each product card:
/// ┌─────────────────────┐
/// │              ♡      │
/// │                     │
/// │    Product Image    │
/// │                     │
/// ├─────────────────────┤
/// │ JET P9009           │
/// │ Polarized Sunglass  │
/// │                     │
/// │ ₹1,499              │
/// │                     │
/// │ [ Add to Cart ]     │
/// └─────────────────────┘
///
/// Product Card
/// - Width: ~165–175 px
/// - Height: 280–310 px
/// - Border Radius: 12–16 px
/// - Background: #FFFFFF
/// - Border: #E5E7EB
/// - Small shadow
/// Product Image
/// - Size: 100% × 150–160 px
/// - Background: #F0F0F0
/// - Border radius: 12 px 12 px 0 0
/// - Product image centered
/// Wishlist Heart
/// - Position: Top Right
/// - Size: 36 × 36 px
/// - Circle background: #FFFFFF
/// - Icon: Filled heart #E53935
/// - Padding: 8 px
/// 4. Product Information
/// Brand
/// JET
///
/// - 13 px
/// - Medium
/// - #6B7280
/// Product Name
/// P9009 Polarized Sunglasses
///
/// - 14 px
/// - Semi Bold
/// - #1F2937
/// - Maximum 2 lines
/// Price
/// ₹1,499
///
/// - 16 px
/// - Bold
/// - Theme color: #1F3A87
/// If sale price:
/// ₹1,999 ₹1,499
/// 5. Add to Cart Button
/// Button:
/// Width: 100%
/// Height: 42 px
/// Border Radius: 8 px
/// +  Add to Cart
///
/// - Background: #1F3A87
/// - Text: #FFFFFF
/// - Font: 14 px Semi Bold
/// ❤️ Empty Wishlist State
/// Wishlist-ൽ products ഇല്ലെങ്കിൽ:
///               ♡
///
///         Your Wishlist is Empty
///
///    Save your favorite eyewear here
///    and shop them whenever you want.
///
///         [ Continue Shopping ]
///
/// Empty State
/// - Heart icon: 64 × 64 px
/// - Title: 20 px Semi Bold
/// - Description: 14 px
/// - Button: 180 × 44 px
/// Button:
/// #1F3A87
/// 🎨 Color Theme
/// Element	Color
/// Primary	#1F3A87
/// Background	#F8F9FA
/// Card	#FFFFFF
/// Product Image BG	#F0F0F0
/// Text	#1F2937
/// Secondary Text	#6B7280
/// Border	#E5E7EB
/// Wishlist Heart	#E53935
/// Success/Stock	#16A34A
/// Final Page Structure
/// WishlistPage
/// │
/// ├── AppBar
/// │   ├── Back Icon
/// │   ├── My Wishlist
/// │   ├── Wishlist Count
/// │   └── Cart Icon
/// │
/// ├── Wishlist Header
/// │   ├── My Wishlist
/// │   └── 12 Items
/// │
/// ├── Product Grid
/// │   ├── Wishlist Product Card
/// │   │   ├── Product Image
/// │   │   ├── Remove Wishlist Icon
/// │   │   ├── Brand
/// │   │   ├── Product Name
/// │   │   ├── Price
/// │   │   └── Add to Cart
/// │   │
/// │   └── More Product Cards
/// │
/// └── Empty State
///     ├── Heart Icon
///     ├── Empty Wishlist Text
///     └── Continue Shopping
class WishlistWidget extends StatefulWidget {
  const WishlistWidget({super.key});

  static String routeName = 'Wishlist';
  static String routePath = 'wishlist';

  @override
  State<WishlistWidget> createState() => _WishlistWidgetState();
}

class _WishlistWidgetState extends State<WishlistWidget> {
  late WishlistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WishlistModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Wishlist'});
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
        backgroundColor: Color(0xFFF8F9FA),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 56.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      child: Container(
                        height: 55.0,
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
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: Color(0xFF1F2937),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'My Wishlist',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF1F2937),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Text(
                                      '12 Items',
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
                                            color: Color(0xFF6B7280),
                                            fontSize: 12.0,
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
                                  ],
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                            Container(
                              width: 32.0,
                              height: 32.0,
                              child: Stack(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 40.0,
                                      fillColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Color(0xFF1F2937),
                                        size: 24.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Container(
                                      width: 18.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE53935),
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        '3',
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
                                              color: Colors.white,
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
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
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 12.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'My Wishlist',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1F2937),
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Text(
                                '12 items',
                                style: FlutterFlowTheme.of(context)
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
                                      color: Color(0xFF6B7280),
                                      fontSize: 14.0,
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
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                      child: Container(
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 0.5,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            wrapWithModel(
                              model: _model.wishlistCardModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: WishlistCardWidget(),
                            ),
                            wrapWithModel(
                              model: _model.wishlistCardModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: WishlistCardWidget(),
                            ),
                            wrapWithModel(
                              model: _model.wishlistCardModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: WishlistCardWidget(),
                            ),
                            wrapWithModel(
                              model: _model.wishlistCardModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: WishlistCardWidget(),
                            ),
                          ],
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
    );
  }
}
