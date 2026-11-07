import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/shopping_pages/product_deatils/product_deatils_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductCard2Widget extends StatelessWidget {
  const ProductCard2Widget({super.key, this.productId, this.imageDesc, this.brand, this.name, this.rating, this.price});
  final int? productId;
  final String? imageDesc;
  final String? brand;
  final String? name;
  final String? rating;
  final String? price;

  @override
  Widget build(BuildContext context) {
    final image = imageDesc ?? '';
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: productId == null ? null : () => context.pushNamed(
        ProductDeatilsWidget.routeName,
        queryParameters: {'productId': serializeParam(productId, ParamType.int)}.withoutNulls,
      ),
      child: Container(
        width: 170,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color(0xFFE5E7EB))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
              child: Container(
                height: 180, width: double.infinity, color: const Color(0xFFF7F7F7),
                child: image.isEmpty ? const Icon(Icons.image_not_supported_outlined, size: 42, color: Colors.grey) :
                  CachedNetworkImage(imageUrl: image, fit: BoxFit.contain, placeholder: (_, __) => const Center(child: CircularProgressIndicator(strokeWidth: 2)), errorWidget: (_, __, ___) => const Icon(Icons.broken_image_outlined)),
              ),
            ),
            const Positioned(top: 8, right: 8, child: CircleAvatar(radius: 17, backgroundColor: Colors.white, child: Icon(Icons.favorite_border, color: Color(0xFF1F3A87), size: 19))),
          ]),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text((brand == null || brand!.isEmpty || brand == 'null') ? 'OPTIC SUIT' : brand!, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Color(0xFF6B7280), fontSize: 11, fontWeight: FontWeight.w600)),
              const SizedBox(height: 5),
              Text(name ?? 'Product', maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Color(0xFF1F1F1F), fontSize: 14, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text((rating == null || rating == 'null' || rating!.isEmpty) ? '☆ New' : '★ $rating', style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280))),
                Text(functions.formatWooPrice(price, '₹') ?? '₹0', style: const TextStyle(color: Color(0xFF1F3A87), fontSize: 15, fontWeight: FontWeight.bold)),
              ]),
            ]),
          ),
        ]),
      ),
    );
  }
}