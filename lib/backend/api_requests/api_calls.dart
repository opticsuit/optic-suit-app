import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WooCommerceProductsCall {
  static Future<ApiCallResponse> call({
    String? perPage = '100',
    String? page = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'WooCommerce Products',
      apiUrl: 'https://opticsuit.com/wp-json/wc/store/v1/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'per_page': "${perPage}",
        'page': "${page}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? productsList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].images[0].src''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].prices.price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? categories(dynamic response) => getJsonField(
        response,
        r'''$[:].categories''',
        true,
      ) as List?;
  static List? brands(dynamic response) => getJsonField(
        response,
        r'''$[:].brands''',
        true,
      ) as List?;
}

class ProductDetailsCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductDetails',
      apiUrl: 'https://opticsuit.com/wp-json/wc/store/v1/products/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? shortDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].short_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].prices.price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regularPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].prices.regular_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? currencySymbol(dynamic response) => (getJsonField(
        response,
        r'''$[:].prices.currency_symbol''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? rating(dynamic response) => (getJsonField(
        response,
        r'''$[:].average_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? reviewCount(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? images(dynamic response) => getJsonField(
        response,
        r'''$[:].images''',
        true,
      ) as List?;
  static List? brands(dynamic response) => getJsonField(
        response,
        r'''$[:].brands''',
        true,
      ) as List?;
  static List? attributes(dynamic response) => getJsonField(
        response,
        r'''$[:].attributes''',
        true,
      ) as List?;
  static List? categories(dynamic response) => getJsonField(
        response,
        r'''$[:].categories''',
        true,
      ) as List?;
  static List<bool>? inStock(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_in_stock''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? stockText(dynamic response) => (getJsonField(
        response,
        r'''$[:].stock_availability.text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? onSale(dynamic response) => (getJsonField(
        response,
        r'''$[:].on_sale''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? sku(dynamic response) => (getJsonField(
        response,
        r'''$[:].sku''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class WooCommerceRelatedProductsCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'WooCommerce Related Products',
      apiUrl: 'https://opticsuit.com/wp-json/wc/store/v1/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'related': "${id}",
        'per_page': "8",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? productsList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetCartCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCart',
      apiUrl: 'https://opticsuit.com/wp-json/wc/store/v1/cart',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  static List<String>? productNames(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].images[:].src''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? quantities(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? prices(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].prices.price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic? totals(dynamic response) => getJsonField(
        response,
        r'''$.totals''',
      );
  static String? totalPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.totals.total_price''',
      ));
  static int? totalItems(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.items_count''',
      ));
  static int? totalQuantity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.items_count''',
      ));
}

class AddToCartCall {
  static Future<ApiCallResponse> call({
    int? id,
    int? quantity,
    String? cartToken = '',
  }) async {
    final ffApiRequestBody = '''
{"id": ${id}, "quantity": ${quantity}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddToCart',
      apiUrl: 'https://opticsuit.com/wp-json/wc/store/v1/cart/add-item',
      callType: ApiCallType.POST,
      headers: {
        'Cart-Token': '${cartToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  static String? totalPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.totals.total_price''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
