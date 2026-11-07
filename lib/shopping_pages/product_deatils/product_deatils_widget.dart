import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductDeatilsWidget extends StatefulWidget {
  const ProductDeatilsWidget({super.key, required this.productId});
  final int? productId;
  static String routeName = 'ProductDeatils';
  static String routePath = 'productDeatils';
  @override
  State<ProductDeatilsWidget> createState() => _ProductDeatilsWidgetState();
}

class _ProductDeatilsWidgetState extends State<ProductDeatilsWidget> {
  late Future<ApiCallResponse> _productFuture;
  int _selectedImage = 0;

  @override
  void initState() {
    super.initState();
    _loadProduct();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ProductDeatils'});
  }

  void _loadProduct() {
    _productFuture = widget.productId == null
        ? Future.value(ApiCallResponse(null, {}, 400))
        : WooCommerceProductByIdCall.call(productId: widget.productId!);
  }

  String _text(dynamic value, [String fallback = '']) {
    if (value == null) return fallback;
    final result = value.toString();
    return result == 'null' ? fallback : result;
  }

  String _money(dynamic minorUnits) {
    final parsed = double.tryParse(_text(minorUnits, '0')) ?? 0;
    return '₹${(parsed / 100).toStringAsFixed(0)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Color(0xFF1F1F1F)), onPressed: () => context.pop()),
        title: const Text('Product Details', style: TextStyle(color: Color(0xFF1F1F1F), fontSize: 17, fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF1F3A87)), onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Cart connection is the next integration step.'))))],
      ),
      body: FutureBuilder<ApiCallResponse>(
        future: _productFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) return const Center(child: CircularProgressIndicator(color: Color(0xFF1F3A87)));
          final response = snapshot.data;
          if (response == null || !response.succeeded || response.jsonBody == null) {
            return Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.grey),
              const SizedBox(height: 12), const Text('Unable to load this product. Please try again.'),
              const SizedBox(height: 12), OutlinedButton(onPressed: () => setState(_loadProduct), child: const Text('Retry')),
            ])));
          }

          final product = response.jsonBody;
          final name = _text(getJsonField(product, r'$.name'), 'Product');
          final sku = _text(getJsonField(product, r'$.sku'), 'Not available');
          final description = _text(getJsonField(product, r'$.description'), 'No description available.');
          final shortDescription = _text(getJsonField(product, r'$.short_description'));
          final price = _money(getJsonField(product, r'$.prices.price'));
          final regularRaw = _text(getJsonField(product, r'$.prices.regular_price'));
          final saleRaw = _text(getJsonField(product, r'$.prices.sale_price'));
          final onSale = saleRaw.isNotEmpty && saleRaw != '0' && saleRaw != regularRaw;
          final inStock = getJsonField(product, r'$.is_in_stock') == true;
          final images = (getJsonField(product, r'$.images', true) as List?) ?? [];
          final imageIndex = _selectedImage.clamp(0, images.isEmpty ? 0 : images.length - 1).toInt();
          final imageUrl = images.isEmpty ? '' : _text(getJsonField(images[imageIndex], r'$.src'));
          final brand = _text(getJsonField(product, r'$.brands[0].name'), 'OPTIC SUIT');
          final categories = (getJsonField(product, r'$.categories', true) as List?) ?? [];

          return Column(children: [
            Expanded(child: SingleChildScrollView(padding: const EdgeInsets.only(bottom: 24), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(color: const Color(0xFFF7F7F7), height: 340, width: double.infinity,
                child: imageUrl.isEmpty ? const Icon(Icons.image_not_supported_outlined, size: 64, color: Colors.grey) :
                  CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.contain, placeholder: (_, __) => const Center(child: CircularProgressIndicator(strokeWidth: 2)), errorWidget: (_, __, ___) => const Icon(Icons.broken_image_outlined, size: 48))),
              if (images.length > 1) SizedBox(height: 78, child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10), scrollDirection: Axis.horizontal, itemCount: images.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final url = _text(getJsonField(images[index], r'$.src'));
                  return InkWell(onTap: () => setState(() => _selectedImage = index), child: Container(width: 58, height: 58, padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(border: Border.all(color: _selectedImage == index ? const Color(0xFF1F3A87) : const Color(0xFFE5E7EB), width: 2), borderRadius: BorderRadius.circular(8)),
                    child: CachedNetworkImage(imageUrl: url, fit: BoxFit.contain)));
                })),
              Padding(padding: const EdgeInsets.fromLTRB(20, 18, 20, 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(brand.toUpperCase(), style: const TextStyle(color: Color(0xFF1F3A87), fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1)),
                const SizedBox(height: 7), Text(name, style: const TextStyle(color: Color(0xFF1F1F1F), fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10), Row(children: [
                  Text(price, style: const TextStyle(color: Color(0xFF1F3A87), fontSize: 24, fontWeight: FontWeight.bold)),
                  if (onSale) ...[const SizedBox(width: 10), Text(_money(regularRaw), style: const TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough, fontSize: 15)), const SizedBox(width: 8), const Text('SALE', style: TextStyle(color: Color(0xFFB42318), fontWeight: FontWeight.bold, fontSize: 11))],
                ]),
                const SizedBox(height: 10), Row(children: [
                  Icon(inStock ? Icons.check_circle : Icons.cancel, size: 17, color: inStock ? Colors.green : Colors.red), const SizedBox(width: 6),
                  Text(inStock ? 'In stock' : 'Out of stock', style: TextStyle(color: inStock ? Colors.green : Colors.red, fontWeight: FontWeight.w600)),
                  const Spacer(), Text('SKU: $sku', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                ]),
              ])),
              const Divider(height: 24),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                if (shortDescription.isNotEmpty) ...[const Text('Overview', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)), const SizedBox(height: 8),
                  Text(shortDescription.replaceAll(RegExp(r'<[^>]*>'), ' ').trim(), style: const TextStyle(fontSize: 14, height: 1.55, color: Color(0xFF555555))), const SizedBox(height: 20)],
                const Text('Product description', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)), const SizedBox(height: 8),
                Text(description.replaceAll(RegExp(r'<[^>]*>'), ' ').trim(), style: const TextStyle(fontSize: 14, height: 1.55, color: Color(0xFF555555))),
                if (categories.isNotEmpty) ...[const SizedBox(height: 20), const Text('Category', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)), const SizedBox(height: 8),
                  Wrap(spacing: 8, children: categories.map((item) => Chip(label: Text(_text(getJsonField(item, r'$.name'))))).toList())],
                const SizedBox(height: 20),
                Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: const Color(0xFFEEF2FF), borderRadius: BorderRadius.circular(12)),
                  child: const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Icon(Icons.local_shipping_outlined, color: Color(0xFF1F3A87)), SizedBox(width: 10),
                    Expanded(child: Text('Delivery and return details are available at checkout and on the Optic Suit website.', style: TextStyle(fontSize: 13, height: 1.4)))])),
              ])),
            ]))),
            SafeArea(top: false, child: Container(padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, -3))]),
              child: Row(children: [
                Expanded(child: OutlinedButton(onPressed: inStock ? () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Cart integration is the next step.'))) : null,
                  style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFF1F3A87), side: const BorderSide(color: Color(0xFF1F3A87)), minimumSize: const Size(0, 50)), child: const Text('Add to Cart'))),
                const SizedBox(width: 12),
                Expanded(child: ElevatedButton(onPressed: inStock ? () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Checkout will be enabled after cart session integration.'))) : null,
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1F3A87), foregroundColor: Colors.white, minimumSize: const Size(0, 50)), child: const Text('Buy Now'))),
              ]))),
          ]);
        },
      ),
    );
  }
}