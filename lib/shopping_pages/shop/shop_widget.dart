import '/backend/api_requests/api_calls.dart';
import '/components/category_chip2_widget.dart';
import '/components/product_card2_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shop_model.dart';
export 'shop_model.dart';

/// ShopSearchFramesPage
/// │
/// ├── 1.
///
/// AppBar
/// │   ├── Back Icon
/// │   ├── Column
/// │   │   ├── Text: Shop
/// │   │   └── Text: Premium Eyewear Collection
/// │   │
/// │   ├── Search Icon
/// │   └── Cart Icon
/// │       └── Cart Badge
/// │
/// ├── 2. Search Bar
/// │   ├── Search Icon
/// │   └── Text: Search frames, sunglasses...
/// │
/// ├── 3. Category Section
/// │   └── Horizontal List
/// │       ├── All
/// │       ├── Eyeglasses
/// │       ├── Sunglasses
/// │       ├── Contact Lenses
/// │       └── Accessories
/// │
/// ├── 4. Sunglasses / Collection Banner
/// │   └── Container
/// │       ├── Banner Image
/// │       ├── Dark Overlay
/// │       │
/// │       └── Column
/// │           ├── Text: NEW COLLECTION
/// │           ├── Text: Summer Sunglasses
/// │           ├── Text: Up to 40% OFF
/// │           └── Button: Shop Now →
/// │
/// ├── 5. Product Control Row
/// │   ├── Text: 124 Products
/// │   │
/// │   ├── Sort By
/// │   │   └── Sort Icon
/// │   │
/// │   └── Filter
/// │       └── Filter Icon
/// │
/// └── 6. Product Grid
///     │
///     ├── ProductCard2
///     ├── ProductCard2
///     ├── ProductCard2
///     ├── ProductCard2
///     ├── ProductCard2
///     └── ...Banner Container
/// │
/// ├── Width: 100%
/// ├── Height: 145–160 px
/// ├── Radius: 16 px
/// │
/// ├── Image
/// │   ├── Width: 100%
/// │   ├── Height: 100%
/// │   └── Fit: Cover
/// │
/// ├── Dark Overlay
/// │   └── Opacity: 20–30%
/// │
/// └── Content
///     ├── NEW COLLECTION
///     │   12 px / Medium
///     │
///     ├── Summer Sunglasses
///     │   20 px / Bold
///     │
///     ├── Up to 40% OFF
///     │   13–14 px
///     │
///     └── Shop Now →
///         Width: 105–115 px
///         Height: 36–40 px
///         Radius: 20 pxAppBar
/// │
/// ├── Back
/// │   Size: 22 px
/// │
/// ├── Shop
/// │   Size: 22 px
/// │   Bold
/// │
/// ├── Search
/// │   Size: 22 px
/// │
/// └── Cart
///     Size: 22 px
///     Badge: 12–16 pxBackground: #1F3A87
/// Text: White
/// Size: 11 pxContainer
/// Width: 100%
/// Height: 44–48 px
/// Radius: 12 px
/// Background: #F5F6F8
///
/// ├── Search Icon
/// └── Search frames, sunglasses...Horizontal List
///
/// [ All ] [ Eyeglasses ] [ Sunglasses ] [ Contact Lenses ] [ Accessories
/// ]Background: #1F3A87
/// Text: #FFFFFF
/// Height: 38 px
/// Radius: 20 pxBackground: #F1F3F7
/// Text: #1B1B1B
/// Height: 38 px
/// Radius: 20 pxRow
/// │
/// ├── 124 Products
/// │
/// ├── Spacer
/// │
/// ├── Sort
/// │   ├── Sort Icon
/// │   └── Sort
/// │
/// └── Filter
///     ├── Filter Icon
///     └── FilterRow Height: 40 px
/// Text: 13–14 px
/// Icon: 18 px
/// Gap: 5–6 pxProductCard2
/// │
/// └── Container
///     Width: 100%
///     Height: 260–280 px
///     Radius: 12 px
///     Background: #FFFFFF
///     │
///     └── Column
///         Main Axis: Min
///         Cross Axis: Start
///         │
///         ├── Image Section
///         │   Height: 180–190 px
///         │   Width: 100%
///         │
///         │   └── Stack
///         │       ├── Product Image
///         │       │   Fit: Cover
///         │       │
///         │       └── Wishlist
///         │           Size: 20 px
///         │           Top Right
///         │
///         └── Text Section
///             Height: 70–80 px
///             Padding: 8 px
///             │
///             ├── Brand
///             │   12 px
///             │   #6B7280
///             │
///             ├── Product Name
///             │   14–15 px
///             │   Medium
///             │   #1B1B1B
///             │
///             └── Row
///                 │
///                 ├── ⭐ Rating
///                 │   Star: #F5B301
///                 │   Rating: 12 px
///                 │
///                 └── Price
///                     16 px
///                     Bold
///                     #1F3A87| Item | Size |
/// |---|---:|
/// | Page Padding | **16 px** |
/// | AppBar Height | **56 px** |
/// | Search Bar | **44–48 px** |
/// | Category Height | **38 px** |
/// | Banner | **145–160 px** |
/// | Banner Radius | **16 px** |
/// | Shop Now Button | **105–115 × 36–40 px** |
/// | Sort/Filter Row | **40 px** |
/// | Product Card Width | **165–175 px** |
/// | Product Card Height | **260–280 px** |
/// | Product Image | **180–190 px** |
/// | Text Section | **70–80 px** |
/// | Grid Gap | **10–12 px** |
/// | Wishlist | **20 px** |
/// | Star | **14 px** |
/// | Brand | **12 px** |
/// | Product Name | **14–15 px** |
/// | Rating | **12 px** |
/// | Price | **16 px Bold** |Primary Blue       #1F3A87
/// Card Background    #FFFFFF
/// Page Background    #F7F7F7
/// Primary Text       #1B1B1B
/// Secondary Text     #6B7280
/// Star               #F5B301
/// Old Price          #9CA3AF
/// Category BG        #F1F3F7
class ShopWidget extends StatefulWidget {
  const ShopWidget({super.key});

  static String routeName = 'Shop';
  static String routePath = 'shop';

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {
  late ShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Shop'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SHOP_PAGE_Shop_ON_INIT_STATE');
      logFirebaseEvent('Shop_backend_call');
      _model.firstBatch = await WooCommerceProductsCall.call(
        perPage: '100',
        page: '1',
      );

      if ((_model.firstBatch?.succeeded ?? true)) {
        logFirebaseEvent('Shop_update_page_state');
        _model.products = getJsonField(
          (_model.firstBatch?.jsonBody ?? ''),
          r'''$''',
          true,
        )!
            .toList()
            .cast<dynamic>();
        safeSetState(() {});
      }
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
        backgroundColor: Color(0xFFF7F7F7),
        body: Column(
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                    child: Container(
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
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Color(0xFF1B1B1B),
                                size: 22.0,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shop',
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
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 22.0,
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
                                    'Premium Eyewear Collection',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF6B7280),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: Color(0xFF1B1B1B),
                                size: 22.0,
                              ),
                              Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Color(0xFF1B1B1B),
                                    size: 22.0,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Container(
                                      width: 14.0,
                                      height: 14.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF1F3A87),
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        '2',
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
                                              fontSize: 9.0,
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
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ],
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
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 48.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F6F8),
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.search_rounded,
                                        color: Color(0xFF6B7280),
                                        size: 20.0,
                                      ),
                                      Text(
                                        'Search frames, sunglasses...',
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
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.categoryChipModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChip2Widget(
                                      active: true,
                                      label: 'All',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.categoryChipModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChip2Widget(
                                      active: false,
                                      label: 'Eyeglasses',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.categoryChipModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChip2Widget(
                                      active: false,
                                      label: 'Sunglasses',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.categoryChipModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChip2Widget(
                                      active: false,
                                      label: 'Contact Lenses',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.categoryChipModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CategoryChip2Widget(
                                      active: false,
                                      label: 'Accessories',
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '124 Products',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF1B1B1B),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.sort_rounded,
                                          color: Color(0xFF1B1B1B),
                                          size: 18.0,
                                        ),
                                        Text(
                                          'Sort',
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
                                                color: Color(0xFF1B1B1B),
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
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.filter_list_rounded,
                                          color: Color(0xFF1B1B1B),
                                          size: 18.0,
                                        ),
                                        Text(
                                          'Filter',
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
                                                color: Color(0xFF1B1B1B),
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
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment:
                                  (FFMainAxisAlignment.end).flutterValue,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'SHOP_PAGE_LOAD_MORE_BTN_ON_TAP');
                                    logFirebaseEvent('Button_backend_call');
                                    _model.moreBatch =
                                        await WooCommerceProductsCall.call(
                                      perPage: '100',
                                      page: _model.nextPage.toString(),
                                    );

                                    if ((_model.moreBatch?.succeeded ?? true)) {
                                      logFirebaseEvent(
                                          'Button_update_page_state');
                                      _model.products = functions
                                          .mergeLists(
                                              getJsonField(
                                                (_model.moreBatch?.jsonBody ??
                                                    ''),
                                                r'''$''',
                                                true,
                                              ),
                                              _model.products.toList())!
                                          .toList()
                                          .cast<dynamic>();
                                      _model.nextPage = _model.nextPage + 1;
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                                  text: 'Load More',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                            Builder(
                              builder: (context) {
                                final productItem = getJsonField(
                                  (_model.firstBatch?.jsonBody ?? ''),
                                  r'''$''',
                                ).toList();

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12.0,
                                    mainAxisSpacing: 12.0,
                                    childAspectRatio: 0.65,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: productItem.length,
                                  itemBuilder: (context, productItemIndex) {
                                    final productItemItem =
                                        productItem[productItemIndex];
                                    return ProductCard2Widget(
                                      key: Key(
                                          'Key5gv_${productItemIndex}_of_${productItem.length}'),
                                      imageDesc: getJsonField(
                                        productItemItem,
                                        r'''$.images[0].src''',
                                      ).toString(),
                                      brand: getJsonField(
                                        productItemItem,
                                        r'''$.brands[0].name''',
                                      ).toString(),
                                      name: getJsonField(
                                        productItemItem,
                                        r'''$.name''',
                                      ).toString(),
                                      price: getJsonField(
                                        productItemItem,
                                        r'''$.prices.price''',
                                      ).toString(),
                                    );
                                  },
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 24.0)),
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
