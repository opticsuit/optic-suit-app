// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct WooCartTotals
class WooCartTotalsStruct extends FFFirebaseStruct {
  WooCartTotalsStruct({
    /// WooCartTotals.total_items
    String? totalItems,

    /// WooCartTotals.total_shipping
    String? totalShipping,

    /// WooCartTotals.total_discount
    String? totalDiscount,

    /// WooCartTotals.total_price
    String? totalPrice,

    /// WooCartTotals.currency_code
    String? currencyCode,

    /// WooCartTotals.currency_symbol
    String? currencySymbol,

    /// WooCartTotals.currency_minor_unit
    int? currencyMinorUnit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalItems = totalItems,
        _totalShipping = totalShipping,
        _totalDiscount = totalDiscount,
        _totalPrice = totalPrice,
        _currencyCode = currencyCode,
        _currencySymbol = currencySymbol,
        _currencyMinorUnit = currencyMinorUnit,
        super(firestoreUtilData);

  // "total_items" field.
  String? _totalItems;
  String get totalItems => _totalItems ?? '';
  set totalItems(String? val) => _totalItems = val;

  bool hasTotalItems() => _totalItems != null;

  // "total_shipping" field.
  String? _totalShipping;
  String get totalShipping => _totalShipping ?? '';
  set totalShipping(String? val) => _totalShipping = val;

  bool hasTotalShipping() => _totalShipping != null;

  // "total_discount" field.
  String? _totalDiscount;
  String get totalDiscount => _totalDiscount ?? '';
  set totalDiscount(String? val) => _totalDiscount = val;

  bool hasTotalDiscount() => _totalDiscount != null;

  // "total_price" field.
  String? _totalPrice;
  String get totalPrice => _totalPrice ?? '';
  set totalPrice(String? val) => _totalPrice = val;

  bool hasTotalPrice() => _totalPrice != null;

  // "currency_code" field.
  String? _currencyCode;
  String get currencyCode => _currencyCode ?? '';
  set currencyCode(String? val) => _currencyCode = val;

  bool hasCurrencyCode() => _currencyCode != null;

  // "currency_symbol" field.
  String? _currencySymbol;
  String get currencySymbol => _currencySymbol ?? '';
  set currencySymbol(String? val) => _currencySymbol = val;

  bool hasCurrencySymbol() => _currencySymbol != null;

  // "currency_minor_unit" field.
  int? _currencyMinorUnit;
  int get currencyMinorUnit => _currencyMinorUnit ?? 0;
  set currencyMinorUnit(int? val) => _currencyMinorUnit = val;

  void incrementCurrencyMinorUnit(int amount) =>
      currencyMinorUnit = currencyMinorUnit + amount;

  bool hasCurrencyMinorUnit() => _currencyMinorUnit != null;

  static WooCartTotalsStruct fromMap(Map<String, dynamic> data) =>
      WooCartTotalsStruct(
        totalItems: data['total_items'] as String?,
        totalShipping: data['total_shipping'] as String?,
        totalDiscount: data['total_discount'] as String?,
        totalPrice: data['total_price'] as String?,
        currencyCode: data['currency_code'] as String?,
        currencySymbol: data['currency_symbol'] as String?,
        currencyMinorUnit: castToType<int>(data['currency_minor_unit']),
      );

  static WooCartTotalsStruct? maybeFromMap(dynamic data) => data is Map
      ? WooCartTotalsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_items': _totalItems,
        'total_shipping': _totalShipping,
        'total_discount': _totalDiscount,
        'total_price': _totalPrice,
        'currency_code': _currencyCode,
        'currency_symbol': _currencySymbol,
        'currency_minor_unit': _currencyMinorUnit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_items': serializeParam(
          _totalItems,
          ParamType.String,
        ),
        'total_shipping': serializeParam(
          _totalShipping,
          ParamType.String,
        ),
        'total_discount': serializeParam(
          _totalDiscount,
          ParamType.String,
        ),
        'total_price': serializeParam(
          _totalPrice,
          ParamType.String,
        ),
        'currency_code': serializeParam(
          _currencyCode,
          ParamType.String,
        ),
        'currency_symbol': serializeParam(
          _currencySymbol,
          ParamType.String,
        ),
        'currency_minor_unit': serializeParam(
          _currencyMinorUnit,
          ParamType.int,
        ),
      }.withoutNulls;

  static WooCartTotalsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WooCartTotalsStruct(
        totalItems: deserializeParam(
          data['total_items'],
          ParamType.String,
          false,
        ),
        totalShipping: deserializeParam(
          data['total_shipping'],
          ParamType.String,
          false,
        ),
        totalDiscount: deserializeParam(
          data['total_discount'],
          ParamType.String,
          false,
        ),
        totalPrice: deserializeParam(
          data['total_price'],
          ParamType.String,
          false,
        ),
        currencyCode: deserializeParam(
          data['currency_code'],
          ParamType.String,
          false,
        ),
        currencySymbol: deserializeParam(
          data['currency_symbol'],
          ParamType.String,
          false,
        ),
        currencyMinorUnit: deserializeParam(
          data['currency_minor_unit'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WooCartTotalsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WooCartTotalsStruct &&
        totalItems == other.totalItems &&
        totalShipping == other.totalShipping &&
        totalDiscount == other.totalDiscount &&
        totalPrice == other.totalPrice &&
        currencyCode == other.currencyCode &&
        currencySymbol == other.currencySymbol &&
        currencyMinorUnit == other.currencyMinorUnit;
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalItems,
        totalShipping,
        totalDiscount,
        totalPrice,
        currencyCode,
        currencySymbol,
        currencyMinorUnit
      ]);
}

WooCartTotalsStruct createWooCartTotalsStruct({
  String? totalItems,
  String? totalShipping,
  String? totalDiscount,
  String? totalPrice,
  String? currencyCode,
  String? currencySymbol,
  int? currencyMinorUnit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WooCartTotalsStruct(
      totalItems: totalItems,
      totalShipping: totalShipping,
      totalDiscount: totalDiscount,
      totalPrice: totalPrice,
      currencyCode: currencyCode,
      currencySymbol: currencySymbol,
      currencyMinorUnit: currencyMinorUnit,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WooCartTotalsStruct? updateWooCartTotalsStruct(
  WooCartTotalsStruct? wooCartTotals, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wooCartTotals
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWooCartTotalsStructData(
  Map<String, dynamic> firestoreData,
  WooCartTotalsStruct? wooCartTotals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wooCartTotals == null) {
    return;
  }
  if (wooCartTotals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wooCartTotals.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wooCartTotalsData =
      getWooCartTotalsFirestoreData(wooCartTotals, forFieldValue);
  final nestedData =
      wooCartTotalsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wooCartTotals.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWooCartTotalsFirestoreData(
  WooCartTotalsStruct? wooCartTotals, [
  bool forFieldValue = false,
]) {
  if (wooCartTotals == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wooCartTotals.toMap());

  // Add any Firestore field values
  mapToFirestore(wooCartTotals.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWooCartTotalsListFirestoreData(
  List<WooCartTotalsStruct>? wooCartTotalss,
) =>
    wooCartTotalss
        ?.map((e) => getWooCartTotalsFirestoreData(e, true))
        .toList() ??
    [];
