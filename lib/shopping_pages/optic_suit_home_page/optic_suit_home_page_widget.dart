import '/backend/api_requests/api_calls.dart';
import '/components/brand_card_widget.dart';
import '/components/category_item_widget.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'optic_suit_home_page_model.dart';
export 'optic_suit_home_page_model.dart';

/// # Optic Suit App – Home Page Design Plan
///
/// ## 1.
///
/// Page Overview
///
/// **Page Name:** Dashboard / Home Page
/// **Platform:** FlutterFlow Mobile App
/// **Design Type:** E-commerce Home Page
/// **Font Family:** Poppins
/// **Primary Color:** `#1F3A87`
/// **Secondary Color:** `#E9EFEA`
/// **Background Color:** `#FFFFFF`
/// **Primary Text Color:** `#1F2937`
/// **Secondary Text Color:** `#6B7280`
/// **Divider Color:** `#E5E7EB`
///
/// ## 2. Header Section
///
/// Create a clean header at the top of the Home Page.
///
/// **Elements:**
/// - Menu icon
/// - Optic Suit logo
/// - Search icon
/// - Notification icon
/// - Wishlist icon
///
/// **Design Specifications:**
/// - Height: 52–60 px
/// - Horizontal padding: 16 px
/// - Icon size: 22–24 px
/// - Icon color: `#1F3A87`
/// - Logo: centered or positioned with balanced spacing
/// - Background: `#FFFFFF`
///
/// **Actions:**
/// - Menu icon → Open navigation drawer
/// - Search icon → Navigate to Search Page
/// - Notification icon → Navigate to Notifications Page
/// - Wishlist icon → Navigate to Wishlist Page
///
/// ## 3. Delivery Location Section
///
/// Display the selected delivery location below the header.
///
/// **Elements:**
/// - Location icon
/// - “Deliver to” label
/// - Selected address or location
/// - Change location / chevron icon
///
/// **Design Specifications:**
/// - Height: 48–56 px
/// - Horizontal padding: 16 px
/// - Location icon size: 20–22 px
/// - Location text: 12–14 px
/// - Background: `#FFFFFF`
///
/// **Action:** Tapping this section opens the address selection page.
///
/// ## 4. Main Banner / Carousel
///
/// Display promotional banners, new arrivals, and featured collections.
///
/// **Elements:**
/// - Banner image
/// - Small category label, such as “New Arrivals”
/// - Main heading
/// - Supporting text
/// - “Shop Now” button
/// - Carousel page indicators
///
/// **Design Specifications:**
/// - Width: Infinity / available width
/// - Height: 190–210 px
/// - Border radius: 12 px
/// - Horizontal margin: 16 px
/// - Heading: Poppins, 22–26 px, Semi Bold
/// - Supporting text: 13–15 px
/// - Button height: 36–40 px
/// - Button background: `#1F3A87`
/// - Button text color: `#FFFFFF`
///
/// **Action:** “Shop Now” navigates to the relevant product listing or
/// collection.
///
/// ## 5. Shop by Category
///
/// Display the main product categories in a horizontal scrollable list.
///
/// **Categories:**
/// - Eyeglasses
/// - Sunglasses
/// - Contact Lens
/// - Kids Wear
///
/// **Design Specifications:**
/// - Section title: 18 px, Semi Bold
/// - Category image/icon size: 48–60 px
/// - Category item width: approximately 80–90 px
/// - Category item spacing: 12 px
/// - Category title: 12–13 px
/// - Icon background: `#E9EFEA`
/// - Selected/active color: `#1F3A87`
///
/// **Action:** Each category opens the corresponding product listing page
/// with the selected category filter applied.
///
/// ## 6. Popular Brands
///
/// Show featured eyewear brands in a horizontal list.
///
/// **Brands:**
/// - Albert Italy
/// - O3
/// - FANDO
/// - JET
/// - DOFORT
///
/// **Elements:**
/// - Section title: “Popular Brands”
/// - “View All” link
/// - Brand logo cards
///
/// **Design Specifications:**
/// - Section title: 18 px, Semi Bold
/// - Brand card width: 64–80 px
/// - Brand card height: 64–80 px
/// - Logo image: contain within the card
/// - Border radius: 10 px
/// - Background: `#FFFFFF`
/// - Card spacing: 10–12 px
///
/// **Action:** Selecting a brand opens its product listing page.
///
/// ## 7. Shop by Collection
///
/// Display selected collections to help users discover products.
///
/// **Suggested Collections:**
/// - New Arrivals
/// - Trending Now
/// - Best Sellers
/// - Premium Collection
///
/// **Design Specifications:**
/// - Horizontal scrollable cards
/// - Card width: 140–180 px
/// - Card height: 100–140 px
/// - Border radius: 12 px
/// - Collection image with readable title
///
/// **Action:** Selecting a collection opens the corresponding
/// collection/product listing page.
///
/// ## 8. Offers & Deals
///
/// Create a section to highlight active offers and promotional campaigns.
///
/// **Elements:**
/// - Offer banner or card
/// - Discount details
/// - Coupon code, where applicable
/// - “Shop Offers” button
///
/// **Design Specifications:**
/// - Banner height: 100–140 px
/// - Border radius: 12 px
/// - Background: `#E9EFEA` or a suitable promotional image
/// - Heading: 16–18 px, Semi Bold
/// - Supporting text: 12–14 px
///
/// Only show valid offers and active coupon codes. The displayed discount
/// must match the actual offer conditions.
///
/// ## 9. Best Sellers
///
/// Display popular products in a two-column grid.
///
/// **Section Header:**
/// - Title: “Best Sellers”
/// - “View All” link
///
/// **Product Card Elements:**
/// - Product image
/// - Wishlist icon
/// - Discount badge, if applicable
/// - Product name
/// - Model code, if required
/// - Current price
/// - Original price with strikethrough, if discounted
/// - Rating, if reliable rating data is available
///
/// **Design Specifications:**
/// - Grid columns: 2
/// - Product card width: available grid width
/// - Product image area: 150–180 px
/// - Product card border radius: 12 px
/// - Card background: `#FFFFFF`
/// - Card spacing: 12 px
/// - Product name: 13–14 px, Medium
/// - Current price: 15–16 px, Semi Bold
/// - Original price: 12–13 px
/// - Price color: `#1F3A87`
/// - Wishlist icon: 20–22 px
///
/// **Actions:**
/// - Product card → Navigate to Product Details Page
/// - Wishlist icon → Add/remove product from Wishlist
/// - “View All” → Navigate to Shop/Product Listing Page
///
/// ## 10. New Arrivals
///
/// Display recently added products in a horizontal scrollable product list.
///
/// **Elements:**
/// - Section title: “New Arrivals”
/// - “View All” link
/// - Product image
/// - Product name
/// - Price
/// - New badge, where applicable
///
/// **Design Specifications:**
/// - Product card width: 150–170 px
/// - Product image area: 140–160 px
/// - Border radius: 12 px
/// - Product title: 13–14 px
/// - Price: 15–16 px, Semi Bold
///
/// Only display products that are genuinely marked as new in the product
/// catalogue.
///
/// ## 11. Recommended Products
///
/// Display relevant product recommendations where recommendation data is
/// available.
///
/// **Elements:**
/// - Section title: “Recommended for You”
/// - Product cards
/// - Product images, names, and prices
/// - Wishlist icons
///
/// Recommendations may be based on product categories, browsing history, or
/// other supported recommendation logic. If personalised recommendations are
/// not configured, use a general featured-products list instead.
///
/// ## 12. Why Shop with Optic Suit?
///
/// Display key customer benefits near the lower portion of the Home Page.
///
/// **Suggested Benefits:**
/// - Secure Payment
/// - Reliable Delivery
/// - Customer Support
/// - Product Assistance
///
/// **Design Specifications:**
/// - Use small icons with short descriptions
/// - Icon size: 24–28 px
/// - Heading: 14–16 px, Semi Bold
/// - Description: 12–13 px
/// - Icon color: `#1F3A87`
/// - Background: `#E9EFEA` or `#FFFFFF`
///
/// Only display benefits that the business actually provides.
///
/// ## 13. Footer / Quick Links
///
/// Display useful links at the bottom of the scrollable Home Page if
/// required.
///
/// **Suggested Links:**
/// - About Us
/// - Contact Us
/// - Help & Support
/// - Privacy Policy
/// - Terms & Conditions
/// - Shipping & Delivery
///
/// Use a clean vertical or compact layout with readable text and appropriate
/// navigation actions.
///
/// ## 14. Bottom Navigation Bar
///
/// Keep the main navigation fixed at the bottom of the screen.
///
/// **Navigation Items:**
/// 1. Home
/// 2. Category
/// 3. Cart
/// 4. Profile
///
/// **Design Specifications:**
/// - Height: 60–70 px
/// - Background: `#FFFFFF`
/// - Active icon/text color: `#1F3A87`
/// - Inactive icon/text color: `#6B7280`
/// - Icon size: 22–24 px
/// - Label font: 11–12 px
/// - Add a cart badge when the cart contains items, if supported.
///
/// The Bottom Navigation Bar should remain fixed while the Home Page content
/// scrolls.
///
/// ## 15. FlutterFlow Widget Tree Structure
///
/// Dashboard (Scaffold)
/// - SafeArea
///   - Column
///     - Expanded
///       - ListView
///         - Header Row
///           - Menu Icon
///           - Optic Suit Logo
///           - Search Icon
///           - Notification Icon
///           - Wishlist Icon
///         - Delivery Location Row
///         - Banner Carousel
///         - Categories Section
///           - Section Header
///           - Horizontal Category List
///         - Popular Brands Section
///           - Section Header Row
///           - Horizontal Brand List
///         - Shop by Collection Section
///         - Offers & Deals Section
///         - Best Sellers Section
///           - Section Header Row
///           - Two-Column Product Grid
///         - New Arrivals Section
///         - Recommended Products Section
///         - Why Shop with Optic Suit Section
///         - Footer / Quick Links
///     - Bottom Navigation Bar
///
/// ## 16. Responsive Design
///
/// - Design for mobile screens first.
/// - Use available width instead of fixed screen-width values.
/// - Keep consistent horizontal padding of approximately 16 px.
/// - Enable vertical scrolling for the Home Page content.
/// - Use horizontal scrolling for categories and brand lists.
/// - Use a two-column product grid on typical mobile screens.
/// - Avoid placing the Bottom Navigation Bar inside the scrolling ListView.
/// - Check layout on different mobile screen sizes.
///
/// ## 17. Functional Requirements
///
/// - Search should open the Search Page.
/// - Categories should open filtered product listings.
/// - Brand cards should open brand-specific listings.
/// - Product cards should open Product Details.
/// - Wishlist icons should update the user's wishlist.
/// - Cart icon should open the Cart Page.
/// - Notifications should open Notifications.
/// - Delivery location should allow address selection.
/// - Offer banners should open the relevant products or offer details.
/// - Product prices, discounts, stock, and availability should come from the
/// actual product data source.
/// - Loading, empty, and error states should be considered for product
/// sections.
/// - Use backend data where available rather than hardcoding changing product
/// information.
///
/// ## 18. Final Design Checklist
///
/// - [ ] Header completed
/// - [ ] Delivery Location completed
/// - [ ] Main Banner completed
/// - [ ] Categories completed
/// - [ ] Popular Brands completed
/// - [ ] Shop by Collection completed
/// - [ ] Offers & Deals completed
/// - [ ] Best Sellers completed
/// - [ ] New Arrivals completed
/// - [ ] Recommended Products completed
/// - [ ] Why Shop with Optic Suit completed
/// - [ ] Footer / Quick Links completed
/// - [ ] Bottom Navigation Bar completed
/// - [ ] Navigation actions configured
/// - [ ] Responsive layout checked
/// - [ ] Product data and prices verified
///
/// **Completion Status:** Use this checklist to track actual design progress.
/// Mark a section complete only after it has been designed and checked in
/// FlutterFlow.Home Page Checklist
/// 0/12
/// [ ] 1. Header
///
/// Menu, Optic Suit logo, Search, Notification, Wishlist
/// [ ] 2. Delivery Location
///
/// Deliver to address + Change location
/// [ ] 3. Main Banner / Carousel
///
/// Offers, New Arrivals, Sunglasses banner + Shop Now
/// [ ] 4. Shop by Category
///
/// Eyeglasses, Sunglasses, Contact Lens, Kids Wear
/// [ ] 5. Popular Brands
///
/// Albert Italy, O3, FANDO, JET, DOFORT
/// [ ] 6. Shop by Collection
///
/// New Arrivals, Trending, Best Sellers
/// [ ] 7. Offers & Deals
///
/// Discount banners, available promotions
/// [ ] 8. Best Sellers
///
/// Product image, name, price, discount, wishlist
/// [ ] 9. New Arrivals
///
/// Latest products in a horizontal product list
/// [ ] 10. Recommended for You
///
/// Suggested products
/// [ ] 11. Why Shop with Optic Suit?
///
/// Secure payment, delivery, customer support
/// [ ] 12. Footer / Quick Links
///
/// About Us, Contact, Privacy Policy, Terms & Conditions
/// Dashboard (Scaffold)
/// └── SafeArea
///     └── Column
///         ├── Expanded
///         │   └── ListView
///         │       ├── Header Row
///         │       │   ├── Menu Icon
///         │       │   ├── Optic Suit Logo
///         │       │   ├── Search Icon
///         │       │   ├── Notification Icon
///         │       │   └── Wishlist Icon
///         │       ├── Delivery Location Row
///         │       ├── Banner Carousel
///         │       ├── Categories Section
///         │       │   ├── Category Eyeglasses
///         │       │   ├── Category Sunglasses
///         │       │   ├── Category Contact Lens
///         │       │   └── Category Kids Wear
///         │       ├── Popular Brands Section
///         │       │   ├── Section Header Row
///         │       │   └── Horizontal Brand List
///         │       └── Best Sellers Section
///         │           ├── Section Header Row
///         │           └── GridView (2 Columns)
///         │               └── Product Card
///         └─
class OpticSuitHomePageWidget extends StatefulWidget {
  const OpticSuitHomePageWidget({super.key});

  static String routeName = 'OpticSuitHomePage';
  static String routePath = 'opticSuitHomePage';

  @override
  State<OpticSuitHomePageWidget> createState() =>
      _OpticSuitHomePageWidgetState();
}

class _OpticSuitHomePageWidgetState extends State<OpticSuitHomePageWidget> {
  late OpticSuitHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpticSuitHomePageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OpticSuitHomePage'});
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.menu_rounded,
                              color: Color(0xFF1F3A87),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/logo_optic.png',
                              width: 148.2,
                              height: 38.7,
                              fit: BoxFit.contain,
                            ),
                          ),
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
                                  Icons.search_rounded,
                                  color: Color(0xFF1F3A87),
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'OPTIC_SUIT_HOME_IconButton_ON_TAP');
                                  logFirebaseEvent('IconButton_navigate_to');

                                  context.pushNamed(SearchWidget.routeName);
                                },
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.notifications_none_rounded,
                                  color: Color(0xFF1F3A87),
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Color(0xFF1F3A87),
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E7EB),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
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
                            24.0, 0.0, 24.0, 0.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xFF1F3A87),
                                          size: 20.0,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Deliver to',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF6B7280),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Home - 22 Baker Street, London',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF1F2937),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: Color(0xFF1F3A87),
                                                  size: 16.0,
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Container(
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF1F3A87),
                                            Color(0xFF3B82F6)
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(-1.0, 0.0),
                                          end: AlignmentDirectional(1.0, 0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        children: [
                                          Opacity(
                                            opacity: 0.4,
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 0),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 0),
                                              imageUrl:
                                                  'https://dimg.dreamflow.cloud/v1/image/stylish%20person%20wearing%20premium%20sunglasses',
                                              fit: BoxFit.cover,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding: EdgeInsets.all(24.0),
                                              child: Container(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFE9EFEA),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    4.0,
                                                                    8.0,
                                                                    4.0),
                                                        child: Container(
                                                          child: Text(
                                                            'NEW ARRIVALS',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF1F3A87),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Summer Premium\nCollection 2024',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
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
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: Container(
                                      child: Text(
                                        'Shop by Category',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1F2937),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'OPTIC_SUIT_HOME_CategoryItem_ON_TAP');
                                                    logFirebaseEvent(
                                                        'CategoryItem_navigate_to');

                                                    context.pushNamed(
                                                        ShopWidget.routeName);
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .categoryItemModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CategoryItemWidget(
                                                      icon: Icon(
                                                        Icons.help,
                                                        color:
                                                            Color(0xFF1F3A87),
                                                        size: 28.0,
                                                      ),
                                                      label: 'Eyeglasses',
                                                    ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.categoryItemModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CategoryItemWidget(
                                                    icon: null,
                                                    label: 'Sunglasses',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.categoryItemModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CategoryItemWidget(
                                                    icon: Icon(
                                                      Icons.visibility_rounded,
                                                      color: Color(0xFF1F3A87),
                                                      size: 28.0,
                                                    ),
                                                    label: 'Contact Lens',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.categoryItemModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CategoryItemWidget(
                                                    icon: Icon(
                                                      Icons.child_care_rounded,
                                                      color: Color(0xFF1F3A87),
                                                      size: 28.0,
                                                    ),
                                                    label: 'Kids Wear',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.categoryItemModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CategoryItemWidget(
                                                    icon: Icon(
                                                      Icons.watch_rounded,
                                                      color: Color(0xFF1F3A87),
                                                      size: 28.0,
                                                    ),
                                                    label: 'Accessories',
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 24.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Popular Brands',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1F2937),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            'View All',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1F3A87),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.brandCardModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BrandCardWidget(
                                                    name: 'Albert Italy',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.brandCardModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BrandCardWidget(
                                                    name: 'O3',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.brandCardModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BrandCardWidget(
                                                    name: 'FANDO',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.brandCardModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BrandCardWidget(
                                                    name: 'JET',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.brandCardModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: BrandCardWidget(
                                                    name: 'DOFORT',
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE9EFEA),
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Color(0x331F3A87),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Special Offer',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF1F3A87),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                                Text(
                                                  'Flat 20% OFF',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF1F2937),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                                Text(
                                                  'On all premium brands',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                            Color(0xFF6B7280),
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
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'OPTIC_SUIT_HOME_PAGE_PAGE_Text_ON_TAP');
                                          logFirebaseEvent('Text_navigate_to');

                                          context.pushNamed(
                                            ProductDeatilsWidget.routeName,
                                            queryParameters: {
                                              'productId': serializeParam(
                                                0,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Text(
                                          'Best Sellers',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF1F2937),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'View All',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1F3A87),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 272.8,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FutureBuilder<ApiCallResponse>(
                                            future:
                                                WooCommerceProductsCall.call(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                    height: 25.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final gridViewWooCommerceProductsResponse =
                                                  snapshot.data!;

                                              return GridView(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 1,
                                                  crossAxisSpacing: 10.0,
                                                  mainAxisSpacing: 10.0,
                                                  childAspectRatio: 1.0,
                                                ),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'OPTIC_SUIT_HOME_Container_r0t67v3d_ON_TA');
                                                      logFirebaseEvent(
                                                          'ProductCard_navigate_to');

                                                      context.pushNamed(
                                                        ProductDeatilsWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'productId':
                                                              serializeParam(
                                                            getJsonField(
                                                              gridViewWooCommerceProductsResponse
                                                                  .jsonBody,
                                                              r'''$''',
                                                            ),
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .productCardModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ProductCardWidget(),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .productCardModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ProductCardWidget(
                                                      favorite: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .productCardModel3,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ProductCardWidget(
                                                      favorite: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .productCardModel4,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ProductCardWidget(
                                                      favorite: false,
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE9EFEA),
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Why Shop with Optic Suit?',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF1F3A87),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .verified_user_rounded,
                                                        color:
                                                            Color(0xFF1F3A87),
                                                        size: 24.0,
                                                      ),
                                                      Text(
                                                        'Secure\nPayment',
                                                        textAlign:
                                                            TextAlign.center,
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
                                                              color: Color(
                                                                  0xFF1F2937),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                              lineHeight: 1.4,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .local_shipping_rounded,
                                                        color:
                                                            Color(0xFF1F3A87),
                                                        size: 24.0,
                                                      ),
                                                      Text(
                                                        'Reliable\nDelivery',
                                                        textAlign:
                                                            TextAlign.center,
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
                                                              color: Color(
                                                                  0xFF1F2937),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                              lineHeight: 1.4,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'OPTIC_SUIT_HOME_PAGE_PAGE_Column_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Column_navigate_to');

                                                      context.pushNamed(
                                                          ContactSupportWidget
                                                              .routeName);
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .support_agent_rounded,
                                                          color:
                                                              Color(0xFF1F3A87),
                                                          size: 24.0,
                                                        ),
                                                        Text(
                                                          '24/7\nSupport',
                                                          textAlign:
                                                              TextAlign.center,
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
                                                                color: Color(
                                                                    0xFF1F2937),
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
                                                                lineHeight: 1.4,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
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
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E7EB),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Container(
                      width: 0.0,
                      height: 0.0,
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
