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

import 'package:flutter/material.dart';

class ProductImageGallery extends StatefulWidget {
  const ProductImageGallery({
    super.key,
    this.width,
    this.height,
    required this.images,
  });

  final double? width;
  final double? height;
  final dynamic images;

  @override
  State<ProductImageGallery> createState() => _ProductImageGalleryState();
}

class _ProductImageGalleryState extends State<ProductImageGallery> {
  late final PageController _controller;
  int _currentPage = 0;

  List<String> get _imageUrls {
    final rawImages = widget.images;
    if (rawImages is! List) return const [];
    return rawImages
        .whereType<Map>()
        .map((image) => image['src']?.toString().trim() ?? '')
        .where((url) => url.isNotEmpty)
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void didUpdateWidget(covariant ProductImageGallery oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.images != widget.images) {
      _currentPage = 0;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _controller.hasClients) _controller.jumpToPage(0);
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final urls = _imageUrls;
    final galleryHeight = widget.height ?? 300;
    if (urls.isEmpty) {
      return Container(
        width: widget.width,
        height: galleryHeight,
        color: const Color(0xFFF9FAFC),
        alignment: Alignment.center,
        child: const Icon(
          Icons.visibility_outlined,
          size: 96,
          color: Color(0xFF1F3A87),
        ),
      );
    }

    return SizedBox(
      width: widget.width,
      height: galleryHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: urls.length,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (context, index) => Container(
              color: const Color(0xFFF9FAFC),
              alignment: Alignment.center,
              child: Image.network(
                urls[index],
                fit: BoxFit.contain,
                width: double.infinity,
                height: galleryHeight,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.visibility_outlined,
                  size: 96,
                  color: Color(0xFF1F3A87),
                ),
              ),
            ),
          ),
          if (urls.length > 1)
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    urls.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      margin: const EdgeInsets.symmetric(horizontal: 3.5),
                      width: index == _currentPage ? 7 : 6,
                      height: index == _currentPage ? 7 : 6,
                      decoration: BoxDecoration(
                        color: index == _currentPage
                            ? const Color(0xFF1F3A87)
                            : const Color(0xFFD3D8E3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
