import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wishlist_page_model.dart';
export 'wishlist_page_model.dart';

/// DSL page WishlistPage
class WishlistPageWidget extends StatefulWidget {
  const WishlistPageWidget({super.key});

  static String routeName = 'WishlistPage';
  static String routePath = 'wishlist';

  @override
  State<WishlistPageWidget> createState() => _WishlistPageWidgetState();
}

class _WishlistPageWidgetState extends State<WishlistPageWidget> {
  late WishlistPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WishlistPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'WishlistPage'});
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
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).lensBlue,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('WISHLIST_PAGE_PAGE_IconButton_ON_TAP');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'My Wishlist',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).lensInk,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future: GetCartCall.call(
                  cartToken: FFAppState().cartToken,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 25.0,
                        height: 25.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final containerGetCartResponse = snapshot.data!;

                  return Container(
                    width: 48.0,
                    height: 48.0,
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        FlutterFlowIconButton(
                          buttonSize: 48.0,
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: FlutterFlowTheme.of(context).lensBlue,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'WISHLIST_PAGE_PAGE_IconButton_ON_TAP');
                            logFirebaseEvent('IconButton_navigate_to');

                            context.pushNamed(MyCartPageWidget.routeName);
                          },
                        ),
                        if (WooCartResponseStruct.maybeFromMap(
                                    containerGetCartResponse.jsonBody)!
                                .itemsCount >
                            0)
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: Container(
                              width: 16.0,
                              height: 16.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFE53935),
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '${WooCartResponseStruct.maybeFromMap(containerGetCartResponse.jsonBody)?.itemsCount?.toString()}',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
            crossAxisAlignment: (FFCrossAxisAlignment.stretch).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              if (valueOrDefault<bool>(
                FFAppState().wishlistProductIds.length > 0,
                false,
              ))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 8.0),
                  child: Text(
                    '${FFAppState().wishlistProductIds.length.toString()} saved items',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).lensMuted,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                  ),
                ),
              if (valueOrDefault<bool>(
                _model.cartMessage != '',
                false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                  child: Text(
                    _model.cartMessage!,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).lensBlue,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                  ),
                ),
              Expanded(
                flex: 1,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (valueOrDefault<bool>(
                      FFAppState().wishlistProductIds.length > 0,
                      false,
                    ))
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Builder(
                          builder: (context) {
                            final productId =
                                FFAppState().wishlistProductIds.toList();

                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: 12.0,
                                childAspectRatio: 0.58,
                              ),
                              shrinkWrap: true,
                              itemCount: productId.length,
                              itemBuilder: (context, productIdIndex) {
                                final productIdItem = productId[productIdIndex];
                                return FutureBuilder<ApiCallResponse>(
                                  future: ProductDetailsCall.call(
                                    id: productIdItem,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 25.0,
                                          height: 25.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final containerProductDetailsResponse =
                                        snapshot.data!;

                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'WISHLIST_PAGE_PAGE_Container_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed(
                                          ProductDetailsWidget.routeName,
                                          queryParameters: {
                                            'productId': serializeParam(
                                              productIdItem,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 8.0,
                                                color: Color(0x101F3A87),
                                                offset: Offset(
                                                  0.0,
                                                  3.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lensBorder,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  (FFMainAxisAlignment
                                                          .spaceBetween)
                                                      .flutterValue,
                                              crossAxisAlignment:
                                                  (FFCrossAxisAlignment.start)
                                                      .flutterValue,
                                              textBaseline:
                                                  TextBaseline.alphabetic,
                                              children: [
                                                Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 124.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lensCanvas,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl:
                                                              getJsonField(
                                                            containerProductDetailsResponse
                                                                .jsonBody,
                                                            r'''$.images[0].src''',
                                                          ).toString(),
                                                          width:
                                                              double.infinity,
                                                          height: 124.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        buttonSize: 40.0,
                                                        icon: Icon(
                                                          Icons
                                                              .favorite_rounded,
                                                          color:
                                                              Color(0xFFE34B59),
                                                          size: 20.0,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'WISHLIST_PAGE_PAGE_IconButton_ON_TAP');
                                                          logFirebaseEvent(
                                                              'IconButton_update_app_state');
                                                          FFAppState()
                                                              .removeFromWishlistProductIds(
                                                                  productIdItem);
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                    if (valueOrDefault<bool>(
                                                      functions
                                                          .wooProductIsOnSale(
                                                              getJsonField(
                                                        containerProductDetailsResponse
                                                            .jsonBody,
                                                        r'''$.on_sale''',
                                                      )),
                                                      false,
                                                    ))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lensBlue,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        7.0,
                                                                        4.0,
                                                                        7.0,
                                                                        4.0),
                                                            child: Text(
                                                              'SALE',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      containerProductDetailsResponse
                                                          .jsonBody,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lensInk,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 6.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        (FFMainAxisAlignment
                                                                .start)
                                                            .flutterValue,
                                                    crossAxisAlignment:
                                                        (FFCrossAxisAlignment
                                                                .center)
                                                            .flutterValue,
                                                    textBaseline:
                                                        TextBaseline.alphabetic,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          functions
                                                              .formatWooPrice(
                                                                  getJsonField(
                                                                    containerProductDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.prices.price''',
                                                                  ).toString(),
                                                                  '₹')!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lensBlue,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      if (valueOrDefault<bool>(
                                                        functions
                                                            .wooProductIsOnSale(
                                                                getJsonField(
                                                          containerProductDetailsResponse
                                                              .jsonBody,
                                                          r'''$.on_sale''',
                                                        )),
                                                        false,
                                                      ))
                                                        Text(
                                                          functions
                                                              .formatWooPrice(
                                                                  getJsonField(
                                                                    containerProductDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.prices.regular_price''',
                                                                  ).toString(),
                                                                  '₹')!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lensMuted,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                              ),
                                                        ),
                                                    ].divide(
                                                        SizedBox(width: 6.0)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: _model
                                                            .addingItem!
                                                        ? null
                                                        : () async {
                                                            logFirebaseEvent(
                                                                'WISHLIST_PAGE_PAGE_Button_ON_TAP');
                                                            var _shouldSetState =
                                                                false;
                                                            if (FFAppState()
                                                                    .cartToken ==
                                                                '') {
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.cartMessage =
                                                                  'Cart session is not ready. Please try again.';
                                                              safeSetState(
                                                                  () {});
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                            logFirebaseEvent(
                                                                'Button_update_page_state');
                                                            _model.addingItem =
                                                                true;
                                                            safeSetState(() {});
                                                            logFirebaseEvent(
                                                                'Button_backend_call');
                                                            _model.addToCartDslRes0 =
                                                                await AddToCartCall
                                                                    .call(
                                                              quantity: 1,
                                                              id: productIdItem,
                                                              cartToken:
                                                                  FFAppState()
                                                                      .cartToken,
                                                            );

                                                            _shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .addToCartDslRes0
                                                                    ?.succeeded ??
                                                                true)) {
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.addingItem =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.cartMessage =
                                                                  'Added to cart';
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.addingItem =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.cartMessage =
                                                                  'Could not add this item. Please try again.';
                                                              safeSetState(
                                                                  () {});
                                                            }

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                          },
                                                    text: 'Add to Cart',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 42.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lensBlue,
                                                      textStyle: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    if (valueOrDefault<bool>(
                      FFAppState().wishlistProductIds.length == 0,
                      false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment:
                              (FFMainAxisAlignment.center).flutterValue,
                          crossAxisAlignment:
                              (FFCrossAxisAlignment.center).flutterValue,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 28.0),
                              child: Container(
                                width: 200.0,
                                height: 200.0,
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Container(
                                      width: 176.0,
                                      height: 176.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .lensCanvas,
                                        borderRadius:
                                            BorderRadius.circular(88.0),
                                      ),
                                    ),
                                    Container(
                                      width: 128.0,
                                      height: 128.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 18.0,
                                            color: Color(0x121F3A87),
                                            offset: Offset(
                                              0.0,
                                              7.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(64.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.favorite_border_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .lensBlue,
                                        size: 68.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Your Wishlist is Empty',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).lensInk,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Save your favourite eyewear here and find them easily whenever you need.',
                                textAlign: TextAlign.center,
                                maxLines: 4,
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
                                      color: FlutterFlowTheme.of(context)
                                          .lensMuted,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 28.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'WISHLIST_PAGE_PAGE_Button_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(ShopWidget.routeName);
                                },
                                text: 'Explore Products',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 54.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).lensBlue,
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ),
                          ],
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
