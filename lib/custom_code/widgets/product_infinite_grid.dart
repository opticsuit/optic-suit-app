// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductInfiniteGrid extends StatefulWidget {
  const ProductInfiniteGrid({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  State<ProductInfiniteGrid> createState() => _ProductInfiniteGridState();
}

class _ProductInfiniteGridState extends State<ProductInfiniteGrid> {
  static const int _perPage = 99;
  static const double _threshold = 600;

  final List<Map<String, dynamic>> _items = [];
  final List<Map<String, dynamic>> _categoryOptions = [];
  final Set<int> _ids = {};
  late final ScrollController _scrollController;
  int _page = 1;
  bool _loading = false;
  bool _hasMore = true;
  bool _failed = false;
  String _search = '';
  String _category = 'All';
  String _brandFilter = 'All';
  String _sort = 'Featured';
  RangeValues _priceRange = const RangeValues(0, 1);
  bool _filterPanelOpen = false;
  int _requestGeneration = 0;

  @override
  void initState() {
    super.initState();
    FFAppState().addListener(_onWishlistChanged);
    _scrollController = ScrollController()..addListener(_onScroll);
    _loadCategories();
    _loadMore();
  }

  void _onWishlistChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    FFAppState().removeListener(_onWishlistChanged);
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final position = _scrollController.position;
    if (position.maxScrollExtent - position.pixels < _threshold) {
      _loadMore();
    }
  }

  Future<void> _loadCategories() async {
    try {
      final response = await http
          .get(
            Uri.parse(
              'https://opticsuit.com/wp-json/wc/store/v1/products/categories?per_page=100&hide_empty=true',
            ),
          )
          .timeout(const Duration(seconds: 30));
      if (!mounted || response.statusCode != 200) return;
      final body = jsonDecode(response.body);
      if (body is! List) return;
      setState(() {
        _categoryOptions
          ..clear()
          ..addAll(body.whereType<Map<String, dynamic>>());
      });
    } catch (_) {
      // Products still load; use their category data if the lookup fails.
    }
  }

  Future<void> _selectCategory(String category) async {
    if (_category == category) return;
    setState(() {
      _category = category;
      _items.clear();
      _ids.clear();
      _page = 1;
      _hasMore = true;
      _failed = false;
      _loading = false;
    });
    _requestGeneration++;
    await _loadMore();
  }

  int? get _selectedCategoryId {
    if (_category == 'All') return null;
    for (final category in _categoryOptions) {
      if ('${category['name']}'.toLowerCase() == _category.toLowerCase() ||
          '${category['slug']}'.toLowerCase() == _category.toLowerCase()) {
        return int.tryParse('${category['id']}');
      }
    }
    return null;
  }

  Future<void> _loadMore() async {
    if (_loading || !_hasMore) return;
    final generation = _requestGeneration;
    final requestedPage = _page;
    setState(() {
      _loading = true;
      _failed = false;
    });

    try {
      final categoryId = _selectedCategoryId;
      final uri = Uri.https(
        'opticsuit.com',
        '/wp-json/wc/store/v1/products',
        {
          'per_page': '$_perPage',
          'page': '$requestedPage',
          if (categoryId != null) 'category': '$categoryId',
        },
      );
      final r = await http.get(uri).timeout(const Duration(seconds: 30));
      if (!mounted || generation != _requestGeneration) return;

      if (r.statusCode == 200) {
        final body = jsonDecode(r.body);
        if (body is! List)
          throw const FormatException('Expected a product list');
        final batch = body;
        final totalPages = int.tryParse(r.headers['x-wp-totalpages'] ?? '');
        setState(() {
          for (final e in batch) {
            if (e is Map<String, dynamic>) {
              final id = e['id'];
              if (id is int && _ids.add(id)) _items.add(e);
            }
          }
          final maxPrice = _items.fold<double>(
            1,
            (maximum, product) =>
                _rawPrice(product) > maximum ? _rawPrice(product) : maximum,
          );
          if (_priceRange.end < maxPrice) {
            _priceRange = RangeValues(_priceRange.start, maxPrice);
          }
          _page = requestedPage + 1;
          _hasMore = totalPages != null
              ? requestedPage < totalPages
              : batch.length >= _perPage;
          _loading = false;
        });
        // If the screen is still not full, keep loading.
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _onScroll();
        });
      } else {
        setState(() {
          _failed = true;
          _loading = false;
        });
      }
    } catch (_) {
      if (!mounted || generation != _requestGeneration) return;
      setState(() {
        _failed = true;
        _loading = false;
      });
    }
  }

  String _clean(String? t) => (t ?? '')
      .replaceAll('&amp;', '&')
      .replaceAll('&#038;', '&')
      .replaceAll('&#8211;', '–')
      .replaceAll('&#8217;', '’')
      .replaceAll('&quot;', '"');

  String _productName(Map<String, dynamic> product) {
    final name = _clean(product['name']?.toString()).trim();
    if (name.isNotEmpty) return name;
    final slug =
        _clean(product['slug']?.toString()).replaceAll('-', ' ').trim();
    return slug.isNotEmpty ? slug : 'Unnamed product';
  }

  String _price(Map<String, dynamic> p) {
    final prices = (p['prices'] as Map?) ?? {};
    final price = _hasSale(p)
        ? prices['sale_price']
        : (prices['price'] ?? prices['regular_price']);
    return _formatRupees(price, prices['currency_minor_unit']);
  }

  String _formatRupees(dynamic rawPrice, dynamic rawMinorUnit) {
    final price = int.tryParse('$rawPrice');
    if (price == null) return '';
    final minor = int.tryParse('$rawMinorUnit') ?? 2;
    var divisor = 1.0;
    for (var i = 0; i < minor; i++) {
      divisor *= 10;
    }
    return '₹${(price / divisor).toStringAsFixed(minor)}';
  }

  bool _hasSale(Map<String, dynamic> product) {
    final prices = product['prices'];
    if (prices is! Map) return false;
    final regular = int.tryParse('${prices['regular_price']}');
    final sale = int.tryParse('${prices['sale_price']}');
    return regular != null && sale != null && sale > 0 && sale < regular;
  }

  String _regularPrice(Map<String, dynamic> product) {
    final prices = (product['prices'] as Map?) ?? {};
    return _formatRupees(
        prices['regular_price'], prices['currency_minor_unit']);
  }

  double _rawPrice(Map<String, dynamic> product) {
    final prices = product['prices'];
    if (prices is! Map) return 0;
    final raw = double.tryParse('${prices['price']}') ?? 0;
    final minor = int.tryParse('${prices['currency_minor_unit']}') ?? 2;
    var divisor = 1.0;
    for (var i = 0; i < minor; i++) {
      divisor *= 10;
    }
    return raw / divisor;
  }

  String _brand(Map<String, dynamic> product) {
    final brands = product['brands'];
    if (brands is List && brands.isNotEmpty && brands.first is Map) {
      final name = (brands.first as Map)['name']?.toString();
      if (name != null && name.isNotEmpty) return _clean(name);
    }

    final attributes = product['attributes'];
    if (attributes is List) {
      for (final attribute in attributes) {
        if (attribute is! Map) continue;
        final slug =
            '${attribute['taxonomy'] ?? attribute['slug'] ?? attribute['name']}'
                .toLowerCase()
                .replaceAll(' ', '_');
        if (slug != 'pa_brand' && slug != 'brand') continue;
        final terms = attribute['terms'];
        if (terms is List && terms.isNotEmpty) {
          final first = terms.first;
          final name =
              first is Map ? first['name']?.toString() : first?.toString();
          if (name != null && name.isNotEmpty) return _clean(name);
        }
        final options = attribute['options'];
        if (options is List && options.isNotEmpty) {
          return _clean(options.first.toString());
        }
      }
    }
    return '';
  }

  List<String> _categories(Map<String, dynamic> product) {
    final categories = product['categories'];
    if (categories is! List) return const [];
    return categories
        .whereType<Map>()
        .map((category) => '${category['name'] ?? ''}')
        .where((name) => name.isNotEmpty)
        .toList();
  }

  List<Map<String, dynamic>> get _visibleProducts {
    final query = _search.trim().toLowerCase();
    final matches = _items.where((product) {
      final name = _clean(product['name']?.toString()).toLowerCase();
      final brand = _brand(product).toLowerCase();
      final price = _rawPrice(product);
      final categoryMatch = _category == 'All' ||
          _categories(product).any(
            (category) =>
                category.toLowerCase().contains(_category.toLowerCase()),
          );
      final brandMatch =
          _brandFilter == 'All' || brand == _brandFilter.toLowerCase();
      return (query.isEmpty || name.contains(query) || brand.contains(query)) &&
          categoryMatch &&
          brandMatch &&
          price >= _priceRange.start &&
          price <= _priceRange.end;
    }).toList();
    switch (_sort) {
      case 'Price: low to high':
        matches.sort((a, b) => _rawPrice(a).compareTo(_rawPrice(b)));
        break;
      case 'Price: high to low':
        matches.sort((a, b) => _rawPrice(b).compareTo(_rawPrice(a)));
        break;
      case 'Newest':
        matches.sort(
          (a, b) => (int.tryParse('${b['id']}') ?? 0).compareTo(
            int.tryParse('${a['id']}') ?? 0,
          ),
        );
        break;
    }
    return matches;
  }

  List<String> get _brands =>
      _items.map(_brand).where((brand) => brand.isNotEmpty).toSet().toList()
        ..sort();

  List<String> get _categoryNames {
    final names = _categoryOptions
        .map((category) => '${category['name'] ?? ''}')
        .where((name) => name.isNotEmpty)
        .toSet();
    if (names.isEmpty) names.addAll(_items.expand(_categories));
    return names.toList()..sort();
  }

  double get _maxPrice => _items.fold<double>(
        1,
        (maximum, product) =>
            _rawPrice(product) > maximum ? _rawPrice(product) : maximum,
      );

  Widget _controls() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (value) => setState(() => _search = value),
            decoration: InputDecoration(
              hintText: 'Search frames, sunglasses...',
              prefixIcon: const Icon(Icons.search, color: Color(0xFF1F3A87)),
              suffixIcon: _search.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => setState(() => _search = ''),
                    ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFF1F3A87)),
              ),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 38,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: ['All', ..._categoryNames].map((category) {
                final selected = _category == category;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(category),
                    selected: selected,
                    onSelected: (_) => _selectCategory(category),
                    selectedColor: const Color(0xFF1F3A87),
                    backgroundColor: Colors.white,
                    labelStyle: TextStyle(
                      color: selected ? Colors.white : const Color(0xFF374151),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    side: BorderSide(
                      color: selected
                          ? const Color(0xFF1F3A87)
                          : const Color(0xFFE5E7EB),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    showCheckmark: false,
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '${_visibleProducts.length} products',
                style: const TextStyle(
                  color: Color(0xFF374151),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () =>
                    setState(() => _filterPanelOpen = !_filterPanelOpen),
                icon: const Icon(Icons.tune, size: 18),
                label: const Text('Filter'),
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF1F3A87),
                ),
              ),
              PopupMenuButton<String>(
                initialValue: _sort,
                onSelected: (value) => setState(() => _sort = value),
                itemBuilder: (_) => const [
                  PopupMenuItem(value: 'Featured', child: Text('Featured')),
                  PopupMenuItem(
                    value: 'Price: low to high',
                    child: Text('Price: low to high'),
                  ),
                  PopupMenuItem(
                    value: 'Price: high to low',
                    child: Text('Price: high to low'),
                  ),
                  PopupMenuItem(value: 'Newest', child: Text('Newest')),
                ],
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.swap_vert, size: 18, color: Color(0xFF1F3A87)),
                      SizedBox(width: 4),
                      Text('Sort', style: TextStyle(color: Color(0xFF1F3A87))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (_filterPanelOpen) ...[
            DropdownButtonFormField<String>(
              value: _brandFilter,
              decoration: const InputDecoration(labelText: 'Brand'),
              items: [
                const DropdownMenuItem(value: 'All', child: Text('All brands')),
                ..._brands.map(
                  (brand) => DropdownMenuItem(value: brand, child: Text(brand)),
                ),
              ],
              onChanged: (value) =>
                  setState(() => _brandFilter = value ?? 'All'),
            ),
            const SizedBox(height: 4),
            Text(
              'Price range: ${_priceRange.start.round()} - ${_priceRange.end.round()}',
              style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
            ),
            RangeSlider(
              values: _priceRange,
              min: 0,
              max: _maxPrice,
              divisions: 50,
              activeColor: const Color(0xFF1F3A87),
              onChanged: (value) => setState(() => _priceRange = value),
            ),
          ],
        ],
      ),
    );
  }

  Widget _rating(Map<String, dynamic> product) {
    final rating = double.tryParse(
      '${product['average_rating'] ?? product['rating'] ?? ''}',
    );
    final count = int.tryParse(
      '${product['review_count'] ?? product['rating_count'] ?? ''}',
    );
    final validRating = rating != null && rating > 0;
    if (!validRating && count == null) return const SizedBox(height: 15);
    return Row(
      children: [
        if (validRating) ...[
          const Icon(Icons.star_rounded, size: 14, color: Color(0xFFF4B740)),
          const SizedBox(width: 2),
          Text(
            rating.toStringAsFixed(1),
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
          ),
        ],
        if (count != null)
          Text(
            validRating ? ' ($count)' : '$count reviews',
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
          ),
      ],
    );
  }

  Widget _card(Map<String, dynamic> p) {
    final images = (p['images'] as List?) ?? [];
    final firstImage = images.isNotEmpty ? images.first : null;
    final img = firstImage is Map ? '${firstImage['src'] ?? ''}' : '';
    final brand = _brand(p);
    final id = p['id'] is int ? p['id'] as int : -1;
    final wishlisted = id >= 0 && FFAppState().wishlistProductIds.contains(id);
    return InkWell(
      onTap: id < 0
          ? null
          : () => context.pushNamed(
                'ProductDetails',
                queryParameters: {'productId': id.toString()},
              ),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE8EBF0)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0C14213D),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: const Color(0xFFFAFBFC),
                    padding: const EdgeInsets.all(8),
                    child: img.isEmpty
                        ? const Icon(
                            Icons.image_outlined,
                            color: Color(0xFFB8C0CC),
                            size: 32,
                          )
                        : Image.network(
                            img,
                            fit: BoxFit.contain,
                            errorBuilder: (_, __, ___) => const Icon(
                              Icons.image_not_supported_outlined,
                              color: Color(0xFF9CA3AF),
                            ),
                            loadingBuilder: (context, child, progress) =>
                                progress == null
                                    ? child
                                    : const Center(
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        ),
                                      ),
                          ),
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Material(
                      color: Colors.white,
                      shape: const CircleBorder(),
                      child: IconButton(
                        visualDensity: VisualDensity.compact,
                        iconSize: 19,
                        onPressed: id < 0
                            ? null
                            : () => FFAppState().update(() {
                                  if (wishlisted) {
                                    FFAppState().wishlistProductIds.remove(id);
                                  } else if (!FFAppState()
                                      .wishlistProductIds
                                      .contains(id)) {
                                    FFAppState().wishlistProductIds.add(id);
                                  }
                                }),
                        icon: Icon(
                          wishlisted ? Icons.favorite : Icons.favorite_border,
                          color: wishlisted
                              ? const Color(0xFFE34B59)
                              : const Color(0xFF6B7280),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (brand.isNotEmpty)
                    Text(
                      brand,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 10.5,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  Text(
                    _productName(p),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                      fontSize: 13.5,
                      height: 1.16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF18233B),
                    ),
                  ),
                  const SizedBox(height: 3),
                  _rating(p),
                  const SizedBox(height: 2),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    runSpacing: 2,
                    children: [
                      Text(
                        _price(p),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1F3A87),
                        ),
                      ),
                      if (_hasSale(p))
                        Text(
                          _regularPrice(p),
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF6B7280),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      if (_hasSale(p))
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1F3A87),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'SALE',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          _controls(),
          Expanded(
            child: GridView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.62,
              ),
              itemCount: _visibleProducts.isEmpty && !_loading && !_failed
                  ? 1
                  : _visibleProducts.length + (_loading || _failed ? 1 : 0),
              itemBuilder: (_, i) {
                if (i < _visibleProducts.length)
                  return _card(_visibleProducts[i]);
                if (_visibleProducts.isEmpty && !_loading && !_failed) {
                  return const Center(
                    child: Text(
                      'No eyewear matches your search or filters.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF6B7280), fontSize: 13),
                    ),
                  );
                }
                if (_failed) {
                  return Center(
                    child: TextButton(
                      onPressed: _loadMore,
                      child: const Text(
                        'Could not load products. Tap to retry',
                      ),
                    ),
                  );
                }
                return const Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
