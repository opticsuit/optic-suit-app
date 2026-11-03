import '/components/filter_chip_widget.dart';
import '/components/order_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_orders_page_model.dart';
export 'my_orders_page_model.dart';

/// 1.
///
/// Page Structure
/// MyOrdersPage
/// │
/// ├── SafeArea
/// │
/// ├── 1. AppBar
/// │   ├── Back Icon
/// │   └── Text: My Orders
/// │
/// ├── 2. Order Status Filter
/// │   └── Horizontal Scroll Row
/// │       ├── All
/// │       ├── Processing
/// │       ├── Shipped
/// │       ├── Delivered
/// │       └── Cancelled
/// │
/// └── 3. Orders List
///     │
///     ├── Order Card 1
///     ├── Order Card 2
///     ├── Order Card 3
///     └── ...
///
/// 2. Page Background
/// Container / Page
/// - Width: 100%
/// - Height: 100%
/// - Background: #F7F8FA
/// 3. AppBar
/// Container
/// - Width: 100%
/// - Height: 64 px
/// - Background: #FFFFFF
/// - Padding Left/Right: 16 px
/// Row
/// Row
/// ├── IconButton
/// │   └── Back Icon
/// │
/// └── Text
///     └── My Orders
///
/// Back Icon
/// - Icon: arrow_back
/// - Size: 24 px
/// - Color: #1F2937
/// My Orders Text
/// - Font Size: 20 px
/// - Font Weight: 600 / SemiBold
/// - Color: #1F2937
/// 4. Order Status Filter
/// AppBar-ന്റെ താഴെ horizontal scrolling tabs.
/// All   Processing   Shipped   Delivered   Cancelled
///
/// Container
/// - Width: 100%
/// - Height: 52 px
/// - Background: #F7F8FA
/// - Padding: 8–16 px
/// Use:
/// SingleChildScrollView → Row
/// Gap
/// - 8 px
/// Selected Tab – All
/// - Height: 36 px
/// - Padding Horizontal: 16 px
/// - Background: #1F3A87
/// - Text: #FFFFFF
/// - Font Size: 13–14 px
/// - Font Weight: 500
/// - Border Radius: 18 px
/// Unselected Tab
/// - Height: 36 px
/// - Padding Horizontal: 16 px
/// - Background: #FFFFFF
/// - Text: #6B7280
/// - Border: 1 px #E5E7EB
/// - Border Radius: 18 px
/// 5. Orders List
/// Use:
/// Expanded
/// └── ListView
///
/// ListView
/// - Padding Left: 16 px
/// - Padding Right: 16 px
/// - Padding Bottom: 20 px
/// - Gap between cards: 12 px
/// 6. Order Card
/// Main Container
/// - Width: 100%
/// - Height: 190–210 px
/// - Background: #FFFFFF
/// - Border Radius: 14 px
/// - Padding: 14–16 px
/// Optional:
/// - Border: 1 px #E5E7EB
/// - Shadow: subtle
/// 7. Order Header
/// Row
/// ├── Column
/// │   ├── Order ID
/// │   └── Order Date
/// │
/// └── Status Badge
///
/// Order ID
/// Example:
/// Order #ORD-10245
/// - Font Size: 14 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Date
/// Example:
/// 05 Oct 2026
/// - Font Size: 12 px
/// - Color: #6B7280
/// 8. Product Section
/// Row
/// ├── Product Image
/// │
/// └── Column
///     ├── Product Name
///     ├── Quantity
///     └── Product Price
///
/// Product Image
/// - Width: 75 px
/// - Height: 75 px
/// - Border Radius: 10 px
/// - Background: #F0F0F0
/// - Fit: BoxFit.cover
/// Product Name
/// Example:
/// Jet Premium Eyeglasses
/// - Font Size: 15 px
/// - Font Weight: 600
/// - Color: #1F2937
/// - Max Lines: 1–2
/// Quantity
/// Example:
/// Qty: 1
/// - Font Size: 12 px
/// - Color: #6B7280
/// Price
/// Example:
/// ₹1,499
/// - Font Size: 14 px
/// - Font Weight: 600
/// - Color: #1F3A87
/// 9. Divider
/// Product section-ന്റെ താഴെ:
/// Divider
///
/// - Color: #E5E7EB
/// - Height: 1 px
/// 10. Bottom Section
/// Row
/// ├── Column
/// │   ├── Total
/// │   └── ₹1,499
/// │
/// └── Button
///     └── View Details
///
/// Total
/// Total
/// - 12 px
/// - #6B7280
/// Amount
/// ₹1,499
/// - 15 px
/// - SemiBold
/// - #1F2937
/// 11. View Details Button
/// - Width: 110–120 px
/// - Height: 38 px
/// - Background: #1F3A87
/// - Text: #FFFFFF
/// - Font Size: 13 px
/// - Font Weight: 500
/// - Border Radius: 8 px
/// Text:
/// View Details
/// Action
/// Button click:
/// My Orders
///      ↓
/// Order Details
///      ↓
/// Track Order
///
/// 12. Status Badge
/// Processing
/// ● Processing
///
/// - Background: #FFF7ED
/// - Text: #EA580C
/// Shipped
/// ● Shipped
///
/// - Background: #EFF6FF
/// - Text: #2563EB
/// Delivered
/// ● Delivered
///
/// - Background: #ECFDF5
/// - Text: #16A34A
/// Cancelled
/// ● Cancelled
///
/// - Background: #FEF2F2
/// - Text: #DC2626
/// Badge
/// - Height: 28 px
/// - Padding Horizontal: 10 px
/// - Border Radius: 14 px
/// - Font Size: 11–12 px
/// 13. Multiple Orders
/// Example:
/// My Orders
///
/// [ All ] [ Processing ] [ Shipped ] [ Delivered ]
///
/// ┌──────────────────────────────┐
/// │ #ORD-10245      ● Delivered  │
/// │ 05 Oct 2026                  │
/// │                              │
/// │ [Image] Jet Eyeglasses       │
/// │         Qty: 1               │
/// │         ₹1,499               │
/// │                              │
/// │ Total ₹1,499  [View Details] │
/// └──────────────────────────────┘
///
/// ┌──────────────────────────────┐
/// │ #ORD-10244      ● Shipped    │
/// │ 03 Oct 2026                  │
/// │                              │
/// │ [Image] O3 Eyeglasses        │
/// │         Qty: 1               │
/// │         ₹1,299               │
/// │                              │
/// │ Total ₹1,299  [View Details] │
/// └──────────────────────────────┘
///
/// 14. Empty Orders State
/// Customer-ന് orders ഒന്നും ഇല്ലെങ്കിൽ:
///               🛍️
///
///           No Orders Yet
///
/// You haven't placed any orders yet.
///
///        [ Start Shopping ]
///
/// Empty Icon
/// - Size: 64 × 64 px
/// - Color: #1F3A87
/// No Orders Yet
/// - Font Size: 20 px
/// - Font Weight: 600
/// - Color: #1F2937
/// Description
/// - Font Size: 13–14 px
/// - Color: #6B7280
/// - Center aligned
/// Start Shopping
/// - Width: 150 px
/// - Height: 44 px
/// - Background: #1F3A87
/// - Text: #FFFFFF
/// - Radius: 10 px
/// Action:
/// Start Shopping
///       ↓
/// Shop Page
///
/// 15. FlutterFlow Widget Tree
/// Scaffold
/// │
/// └── SafeArea
///     │
///     └── Column
///         │
///         ├── AppBar Container
///         │   └── Row
///         │       ├── IconButton
///         │       │   └── arrow_back
///         │       │
///         │       └── Text
///         │           └── My Orders
///         │
///         ├── Filter Container
///         │   └── SingleChildScrollView
///         │       └── Row
///         │           ├── All
///         │           ├── Processing
///         │           ├── Shipped
///         │           ├── Delivered
///         │           └── Cancelled
///         │
///         └── Expanded
///             │
///             └── ListView
///                 │
///                 ├── Order Card
///                 │   ├── Order Header
///                 │   ├── Product Row
///                 │   ├── Divider
///                 │   └── Bottom Row
///                 │
///                 ├── Order Card
///                 │
///                 └── Order Card
///
/// 🎨 Complete Color Palette
/// Element	Color
/// Primary	#1F3A87
/// Page Background	#F7F8FA
/// Card Background	#FFFFFF
/// Main Text	#1F2937
/// Secondary Text	#6B7280
/// Border	#E5E7EB
/// Processing	#EA580C
/// Shipped	#2563EB
/// Delivered	#16A34A
/// Cancelled	#DC2626
/// Product Image BG	#F0F0F0
/// 🔗 Final Customer Flow
/// Home
///   ↓
/// Profile
///   ↓
/// My Orders
///   ↓
/// Select Order
///   ↓
/// Order Details
///   ↓
/// Track Order
///   ↓
/// Processing
///   ↓
/// Shipped
///   ↓
/// Out for Delivery
///   ↓
/// Delivered
class MyOrdersPageWidget extends StatefulWidget {
  const MyOrdersPageWidget({super.key});

  static String routeName = 'MyOrdersPage';
  static String routePath = 'myOrdersPage';

  @override
  State<MyOrdersPageWidget> createState() => _MyOrdersPageWidgetState();
}

class _MyOrdersPageWidgetState extends State<MyOrdersPageWidget> {
  late MyOrdersPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyOrdersPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MyOrdersPage'});
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
        backgroundColor: Color(0xFFF7F8FA),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 64.0,
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      child: Container(
                        height: 63.0,
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xFF1F2937),
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Text(
                              'My Orders',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1F2937),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
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
            Container(
              height: 52.0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: Container(
                  child: Container(
                    height: 36.0,
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.filterChipModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      selected: true,
                                      label: 'All',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      selected: false,
                                      label: 'Processing',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      selected: false,
                                      label: 'Shipped',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      selected: false,
                                      label: 'Delivered',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      selected: false,
                                      label: 'Cancelled',
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.orderCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  id: '',
                                  date: '05 Oct 2026',
                                  status: 'Delivered',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/black%20rectangular%20eyeglasses',
                                  product: 'Jet Premium Eyeglasses',
                                  qty: '1',
                                  price: '₹1,499',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  id: '',
                                  date: '03 Oct 2026',
                                  status: 'Shipped',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/blue%20rimmed%20glasses',
                                  product: 'O3 Eyeglasses - Blue Light',
                                  qty: '1',
                                  price: '₹1,299',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  id: '',
                                  date: '28 Sep 2026',
                                  status: 'Processing',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/titanium%20frame%20aviator%20sunglasses',
                                  product: 'Titanium Aviators',
                                  qty: '1',
                                  price: '₹2,850',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  id: '',
                                  date: '25 Sep 2026',
                                  status: 'Cancelled',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/round%20tortoise%20shell%20glasses',
                                  product: 'Retro Round Frames',
                                  qty: '2',
                                  price: '₹999',
                                ),
                              ),
                              Container(
                                height: 20.0,
                              ),
                            ].divide(SizedBox(height: 16.0)),
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
