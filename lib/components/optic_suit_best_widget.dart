import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'optic_suit_best_model.dart';
export 'optic_suit_best_model.dart';

/// # Optic Suit App – Best Sellers Section Design Plan
///
/// ## 1.
///
/// Section Overview
///
/// **Component Name:** `BestSellersSection`
/// **Reusable Component:** Yes
/// **Page:** `OpticSuitHomePage`
/// **Section Type:** E-commerce Product Grid
/// **Layout:** Two-column grid
/// **Scroll Direction:** Vertical page scroll
/// **Product Card:** Reusable `ProductCard` component
///
/// ### Theme Settings
///
/// - Primary Color: `#1F3A87`
/// - Secondary Color: `#E9EFEA`
/// - Background Color: `#FFFFFF`
/// - Primary Text: `#1F2937`
/// - Secondary Text: `#6B7280`
/// - Border Color: `#E5E7EB`
/// - Font Family: Poppins
///
/// ## 2. Section Header
///
/// Display the section heading and View All action in one horizontal row.
///
/// **Elements:**
/// - Title: Best Sellers
/// - View All text
/// - Right arrow icon (optional)
///
/// **Design Specifications:**
/// - Width: Infinity
/// - Height: 28–32 px
/// - Title font: Poppins, 18 px, Semi Bold
/// - Title color: `#1F2937`
/// - View All font: Poppins, 13–14 px, Medium
/// - View All color: `#1F3A87`
/// - Main-axis alignment: Space Between
/// - Bottom spacing: 12–16 px
///
/// **Action:** View All navigates to the Shop/Product Listing Page with the
/// Best Sellers filter applied, where supported.
///
/// ## 3. Product Grid
///
/// Display the best-selling eyewear products in a two-column grid.
///
/// **Grid Settings:**
/// - Columns: 2
/// - Horizontal spacing: 12 px
/// - Vertical spacing: 16 px
/// - Grid width: Infinity
/// - Product card width: Available width within each column
/// - Product card height: Approximately 250–290 px, depending on content
/// - Page horizontal padding: 16 px
/// - Grid scroll: Part of the main vertical Home Page scroll
///
/// **Important:** Avoid placing a vertically scrolling GridView inside
/// another vertical ListView unless the inner grid has suitable shrink-wrap
/// and scrolling settings. For the Home Page, use a
/// non-scrollable/shrink-wrapped grid inside the main scrollable content, or
/// use a Column with rows of two product cards.
///
/// ## 4. Product Card Structure
///
/// Each Product Card should include the following elements in order:
///
/// ### A. Product Image
///
/// - Width: Infinity
/// - Height: 140–160 px
/// - Image fit: Contain
/// - Background: `#FFFFFF`
/// - Border radius: 10–12 px
/// - Use actual eyewear product images on a clean background.
/// - Do not use unrelated fashion, animal, landscape, or decorative images.
///
/// ### B. Wishlist Icon
///
/// - Position: Top-right corner of the image area
/// - Icon: Heart
/// - Size: 20–22 px
/// - Default color: `#1F3A87` or `#6B7280`
/// - Selected color: `#1F3A87`
/// - Optional circular white background behind the icon
/// - Tap action: Add or remove the product from Wishlist.
///
/// ### C. Best Seller Badge
///
/// - Text: Best Seller
/// - Font: Poppins, 10–11 px, Medium
/// - Text color: `#1F3A87`
/// - Background: `#E9EFEA`
/// - Padding: 6 px horizontal, 3–4 px vertical
/// - Border radius: 6 px
///
/// Display this badge only for products actually designated as best sellers.
/// If a product is discounted, an optional separate discount badge may be
/// displayed.
///
/// ### D. Product Brand and Name
///
/// Example:
/// - Brand: JET
/// - Product Name: P9009 Polarized Sunglasses
///
/// **Design Specifications:**
/// - Brand font: Poppins, 12 px, Medium
/// - Product name font: Poppins, 13–14 px, Medium
/// - Text color: `#1F2937`
/// - Maximum product name lines: 2
/// - Text overflow: Ellipsis
/// - Space above text: 8 px
///
/// ### E. Product Price
///
/// Example:
/// - Current Price: ₹1,499
/// - Original Price: ₹1,999
///
/// **Design Specifications:**
/// - Current price font: Poppins, 15–16 px, Bold
/// - Current price color: `#1F3A87`
/// - Original price font: Poppins, 12–13 px, Regular
/// - Original price color: `#9CA3AF`
/// - Original price: Strikethrough
/// - Discount: Optional, only when the original and current prices support a
/// valid discount.
///
/// Show the original price only if it is greater than the current selling
/// price.
///
/// ### F. Rating (Optional)
///
/// If verified customer ratings are available:
/// - Star icon
/// - Average rating
/// - Review count, where available
/// - Font size: 11–12 px
///
/// Do not display fake ratings or review counts. If rating data is
/// unavailable, omit this row.
///
/// ## 5. Product Card Appearance
///
/// **Card Settings:**
/// - Background: `#FFFFFF`
/// - Border: `1 px solid #E5E7EB`
/// - Border radius: 12 px
/// - Inner padding: 8 px
/// - Image-to-text spacing: 8 px
/// - Card elevation: 0–2 px, optional
/// - Product image: 140–160 px high
///
/// Maintain equal card widths and consistent spacing across both columns.
///
/// ## 6. Home Page Scroll Structure
///
/// The Home Page should use one main vertical scroll area.
///
/// Recommended section order:
///
/// 1. Header
/// 2. Delivery Location
/// 3. Main Banner / Carousel
/// 4. Shop by Category
/// 5. Popular Brands
/// 6. Special Offers
/// 7. Best Sellers
/// 8. New Arrivals
/// 9. Trending Now (optional)
/// 10. Premium Collection (optional)
/// 11. Why Shop with Optic Suit?
/// 12. Footer / Quick Links
///
/// The Bottom Navigation Bar should remain fixed at the bottom of the screen
/// and must not scroll with the content.
///
/// ## 7. FlutterFlow Widget Tree
///
/// OpticSuitHomePage (Scaffold)
/// - SafeArea
///   - Column
///     - Expanded
///       - ListView
///         - HomeHeader
///         - DeliveryLocationCard
///         - HomeBannerCarousel
///         - HomeCategoryList
///         - PopularBrandsSection
///         - SpecialOfferCard
///         - BestSellersSection
///           - Column
///             - Row (Section Header)
///               - Text: Best Sellers
///               - View All Action
///             - SizedBox (12 px)
///             - GridView or Column with product rows
///               - ProductCard
///               - ProductCard
///               - ProductCard
///               - ProductCard
///         - NewArrivalsSection
///         - TrendingNowSection (optional)
///         - PremiumCollectionSection (optional)
///         - WhyShopWithUs
///         - HomeFooterLinks
///     - Bottom Navigation Bar
///
/// ## 8. Reusable ProductCard Component
///
/// Create a separate component named `ProductCard` to reuse for Best Sellers,
/// New Arrivals, and Trending Now.
///
/// Suggested component parameters:
/// - productImage
/// - brandName
/// - productName
/// - modelCode
/// - currentPrice
/// - originalPrice (optional)
/// - isBestSeller
/// - discountLabel (optional)
/// - productId
///
/// Connect these parameters to the actual product data source. The displayed
/// values should not be hardcoded when live product data is available.
///
/// ## 9. Navigation and Functional Actions
///
/// - Product image/card tap → Navigate to Product Details Page.
/// - Wishlist icon tap → Add/remove the product from the user's Wishlist.
/// - View All tap → Navigate to the Shop/Product Listing Page.
/// - Best Seller badge → Display only for eligible products.
/// - Price display → Use the current selling price from the product data
/// source.
/// - Product grid → Display only active and available products, based on the
/// store's rules.
///
/// ## 10. Responsive Design
///
/// - Use two columns on typical mobile screens.
/// - Keep 16 px horizontal page padding.
/// - Maintain 12 px horizontal grid spacing and 16 px vertical spacing.
/// - Use flexible card widths instead of fixed full-screen widths.
/// - Ensure long product names wrap or use ellipsis.
/// - Check the layout on different mobile device sizes.
/// - Ensure the fixed Bottom Navigation Bar does not cover the last content
/// section.
///
/// ## 11. Best Sellers Completion Checklist
///
/// - [ ] Section title added
/// - [ ] View All action added
/// - [ ] Two-column product grid created
/// - [ ] Actual eyewear images added
/// - [ ] Wishlist icon positioned correctly
/// - [ ] Best Seller badge configured
/// - [ ] Brand and product name displayed
/// - [ ] Current price displayed
/// - [ ] Original price and discount displayed only when applicable
/// - [ ] Product cards use consistent spacing and dimensions
/// - [ ] Product card navigation configured
/// - [ ] Wishlist action configured
/// - [ ] Product data source connected or planned
/// - [ ] Vertical scrolling checked
/// - [ ] Bottom Navigation Bar remains fixed
/// - [ ] Mobile responsive layout verified
class OpticSuitBestWidget extends StatefulWidget {
  const OpticSuitBestWidget({
    super.key,
    String? title,
    String? viewAllLabel,
  })  : this.title = title ?? '',
        this.viewAllLabel = viewAllLabel ?? '';

  final String title;
  final String viewAllLabel;

  @override
  State<OpticSuitBestWidget> createState() => _OpticSuitBestWidgetState();
}

class _OpticSuitBestWidgetState extends State<OpticSuitBestWidget> {
  late OpticSuitBestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpticSuitBestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF1F2937),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.viewAllLabel,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF1F3A87),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF1F3A87),
                      size: 12.0,
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
              ],
            ),
          ),
          GridView(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.0,
            ),
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFFE5E7EB),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.0,
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 0),
                                    fadeOutDuration: Duration(milliseconds: 0),
                                    imageUrl:
                                        'https://dimg.dreamflow.cloud/v1/image/Modern%20black%20aviator%20sunglasses',
                                    fit: BoxFit.contain,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 9999.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0xCCFFFFFF),
                                      icon: Icon(
                                        Icons.favorite_border_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFEA),
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 6.0, 3.0, 6.0),
                            child: Container(
                              child: Text(
                                'Best Seller',
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
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'JET',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              'P9009 Polarized Sunglasses',
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '₹1,499',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              '₹1,999',
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
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    decoration: TextDecoration.lineThrough,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFFE5E7EB),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.0,
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 0),
                                    fadeOutDuration: Duration(milliseconds: 0),
                                    imageUrl:
                                        'https://dimg.dreamflow.cloud/v1/image/Clear%20frame%20blue%20light%20blocking%20glasses',
                                    fit: BoxFit.contain,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 9999.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0xCCFFFFFF),
                                      icon: Icon(
                                        Icons.favorite_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFEA),
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 6.0, 3.0, 6.0),
                            child: Container(
                              child: Text(
                                'Best Seller',
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
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'RAY-Z',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              'Urban Clear Blue Light Shield',
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '₹2,199',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              '₹2,800',
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
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    decoration: TextDecoration.lineThrough,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFFE5E7EB),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.0,
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 0),
                                    fadeOutDuration: Duration(milliseconds: 0),
                                    imageUrl:
                                        'https://dimg.dreamflow.cloud/v1/image/Classic%20brown%20tortoiseshell%20frames',
                                    fit: BoxFit.contain,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 9999.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0xCCFFFFFF),
                                      icon: Icon(
                                        Icons.favorite_border_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFEA),
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 6.0, 3.0, 6.0),
                            child: Container(
                              child: Text(
                                'Best Seller',
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
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'VINTAGE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              'Classic Tortoise Shell Wayfarer',
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '₹1,850',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFFE5E7EB),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.0,
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 0),
                                    fadeOutDuration: Duration(milliseconds: 0),
                                    imageUrl:
                                        'https://dimg.dreamflow.cloud/v1/image/Gold%20rimmed%20luxury%20eyewear',
                                    fit: BoxFit.contain,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 9999.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0xCCFFFFFF),
                                      icon: Icon(
                                        Icons.favorite_border_rounded,
                                        color: Color(0xFF1F3A87),
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFEA),
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 6.0, 3.0, 6.0),
                            child: Container(
                              child: Text(
                                'Best Seller',
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
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'LUXE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B7280),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              '24K Gold Rimmed Executive Series',
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '₹4,999',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F3A87),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              '₹6,500',
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
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    decoration: TextDecoration.lineThrough,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
