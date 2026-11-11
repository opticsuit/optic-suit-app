// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct WooCartItem
class WooCartItemStruct extends FFFirebaseStruct {
  WooCartItemStruct({
    /// WooCartItem.name
    String? name,

    /// WooCartItem.quantity
    int? quantity,

    /// WooCartItem.prices
    WooCartItemPricesStruct? prices,

    /// WooCartItem.images
    List<WooCartImageStruct>? images,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _quantity = quantity,
        _prices = prices,
        _images = images,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "prices" field.
  WooCartItemPricesStruct? _prices;
  WooCartItemPricesStruct get prices => _prices ?? WooCartItemPricesStruct();
  set prices(WooCartItemPricesStruct? val) => _prices = val;

  void updatePrices(Function(WooCartItemPricesStruct) updateFn) {
    updateFn(_prices ??= WooCartItemPricesStruct());
  }

  bool hasPrices() => _prices != null;

  // "images" field.
  List<WooCartImageStruct>? _images;
  List<WooCartImageStruct> get images => _images ?? const [];
  set images(List<WooCartImageStruct>? val) => _images = val;

  void updateImages(Function(List<WooCartImageStruct>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  static WooCartItemStruct fromMap(Map<String, dynamic> data) =>
      WooCartItemStruct(
        name: data['name'] as String?,
        quantity: castToType<int>(data['quantity']),
        prices: data['prices'] is WooCartItemPricesStruct
            ? data['prices']
            : WooCartItemPricesStruct.maybeFromMap(data['prices']),
        images: getStructList(
          data['images'],
          WooCartImageStruct.fromMap,
        ),
      );

  static WooCartItemStruct? maybeFromMap(dynamic data) => data is Map
      ? WooCartItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'quantity': _quantity,
        'prices': _prices?.toMap(),
        'images': _images?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'prices': serializeParam(
          _prices,
          ParamType.DataStruct,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static WooCartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      WooCartItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        prices: deserializeStructParam(
          data['prices'],
          ParamType.DataStruct,
          false,
          structBuilder: WooCartItemPricesStruct.fromSerializableMap,
        ),
        images: deserializeStructParam<WooCartImageStruct>(
          data['images'],
          ParamType.DataStruct,
          true,
          structBuilder: WooCartImageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'WooCartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WooCartItemStruct &&
        name == other.name &&
        quantity == other.quantity &&
        prices == other.prices &&
        listEquality.equals(images, other.images);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, quantity, prices, const ListEquality().hash(images)]);
}

WooCartItemStruct createWooCartItemStruct({
  String? name,
  int? quantity,
  WooCartItemPricesStruct? prices,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WooCartItemStruct(
      name: name,
      quantity: quantity,
      prices: prices ?? (clearUnsetFields ? WooCartItemPricesStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WooCartItemStruct? updateWooCartItemStruct(
  WooCartItemStruct? wooCartItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wooCartItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWooCartItemStructData(
  Map<String, dynamic> firestoreData,
  WooCartItemStruct? wooCartItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wooCartItem == null) {
    return;
  }
  if (wooCartItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wooCartItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wooCartItemData =
      getWooCartItemFirestoreData(wooCartItem, forFieldValue);
  final nestedData =
      wooCartItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wooCartItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWooCartItemFirestoreData(
  WooCartItemStruct? wooCartItem, [
  bool forFieldValue = false,
]) {
  if (wooCartItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wooCartItem.toMap());

  // Handle nested data for "prices" field.
  addWooCartItemPricesStructData(
    firestoreData,
    wooCartItem.hasPrices() ? wooCartItem.prices : null,
    'prices',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(wooCartItem.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWooCartItemListFirestoreData(
  List<WooCartItemStruct>? wooCartItems,
) =>
    wooCartItems?.map((e) => getWooCartItemFirestoreData(e, true)).toList() ??
    [];
