// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct WooCartItemPrices
class WooCartItemPricesStruct extends FFFirebaseStruct {
  WooCartItemPricesStruct({
    /// WooCartItemPrices.price
    String? price,

    /// WooCartItemPrices.currency_code
    String? currencyCode,

    /// WooCartItemPrices.currency_symbol
    String? currencySymbol,

    /// WooCartItemPrices.currency_minor_unit
    int? currencyMinorUnit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _price = price,
        _currencyCode = currencyCode,
        _currencySymbol = currencySymbol,
        _currencyMinorUnit = currencyMinorUnit,
        super(firestoreUtilData);

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

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

  static WooCartItemPricesStruct fromMap(Map<String, dynamic> data) =>
      WooCartItemPricesStruct(
        price: data['price'] as String?,
        currencyCode: data['currency_code'] as String?,
        currencySymbol: data['currency_symbol'] as String?,
        currencyMinorUnit: castToType<int>(data['currency_minor_unit']),
      );

  static WooCartItemPricesStruct? maybeFromMap(dynamic data) => data is Map
      ? WooCartItemPricesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'price': _price,
        'currency_code': _currencyCode,
        'currency_symbol': _currencySymbol,
        'currency_minor_unit': _currencyMinorUnit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'price': serializeParam(
          _price,
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

  static WooCartItemPricesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WooCartItemPricesStruct(
        price: deserializeParam(
          data['price'],
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
  String toString() => 'WooCartItemPricesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WooCartItemPricesStruct &&
        price == other.price &&
        currencyCode == other.currencyCode &&
        currencySymbol == other.currencySymbol &&
        currencyMinorUnit == other.currencyMinorUnit;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([price, currencyCode, currencySymbol, currencyMinorUnit]);
}

WooCartItemPricesStruct createWooCartItemPricesStruct({
  String? price,
  String? currencyCode,
  String? currencySymbol,
  int? currencyMinorUnit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WooCartItemPricesStruct(
      price: price,
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

WooCartItemPricesStruct? updateWooCartItemPricesStruct(
  WooCartItemPricesStruct? wooCartItemPrices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wooCartItemPrices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWooCartItemPricesStructData(
  Map<String, dynamic> firestoreData,
  WooCartItemPricesStruct? wooCartItemPrices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wooCartItemPrices == null) {
    return;
  }
  if (wooCartItemPrices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wooCartItemPrices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wooCartItemPricesData =
      getWooCartItemPricesFirestoreData(wooCartItemPrices, forFieldValue);
  final nestedData =
      wooCartItemPricesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wooCartItemPrices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWooCartItemPricesFirestoreData(
  WooCartItemPricesStruct? wooCartItemPrices, [
  bool forFieldValue = false,
]) {
  if (wooCartItemPrices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wooCartItemPrices.toMap());

  // Add any Firestore field values
  mapToFirestore(wooCartItemPrices.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWooCartItemPricesListFirestoreData(
  List<WooCartItemPricesStruct>? wooCartItemPricess,
) =>
    wooCartItemPricess
        ?.map((e) => getWooCartItemPricesFirestoreData(e, true))
        .toList() ??
    [];
