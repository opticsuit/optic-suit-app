// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct WooCartResponse
class WooCartResponseStruct extends FFFirebaseStruct {
  WooCartResponseStruct({
    /// WooCartResponse.items
    List<WooCartItemStruct>? items,

    /// WooCartResponse.items_count
    int? itemsCount,

    /// WooCartResponse.totals
    WooCartTotalsStruct? totals,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _items = items,
        _itemsCount = itemsCount,
        _totals = totals,
        super(firestoreUtilData);

  // "items" field.
  List<WooCartItemStruct>? _items;
  List<WooCartItemStruct> get items => _items ?? const [];
  set items(List<WooCartItemStruct>? val) => _items = val;

  void updateItems(Function(List<WooCartItemStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  // "items_count" field.
  int? _itemsCount;
  int get itemsCount => _itemsCount ?? 0;
  set itemsCount(int? val) => _itemsCount = val;

  void incrementItemsCount(int amount) => itemsCount = itemsCount + amount;

  bool hasItemsCount() => _itemsCount != null;

  // "totals" field.
  WooCartTotalsStruct? _totals;
  WooCartTotalsStruct get totals => _totals ?? WooCartTotalsStruct();
  set totals(WooCartTotalsStruct? val) => _totals = val;

  void updateTotals(Function(WooCartTotalsStruct) updateFn) {
    updateFn(_totals ??= WooCartTotalsStruct());
  }

  bool hasTotals() => _totals != null;

  static WooCartResponseStruct fromMap(Map<String, dynamic> data) =>
      WooCartResponseStruct(
        items: getStructList(
          data['items'],
          WooCartItemStruct.fromMap,
        ),
        itemsCount: castToType<int>(data['items_count']),
        totals: data['totals'] is WooCartTotalsStruct
            ? data['totals']
            : WooCartTotalsStruct.maybeFromMap(data['totals']),
      );

  static WooCartResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? WooCartResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'items': _items?.map((e) => e.toMap()).toList(),
        'items_count': _itemsCount,
        'totals': _totals?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
        'items_count': serializeParam(
          _itemsCount,
          ParamType.int,
        ),
        'totals': serializeParam(
          _totals,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static WooCartResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      WooCartResponseStruct(
        items: deserializeStructParam<WooCartItemStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: WooCartItemStruct.fromSerializableMap,
        ),
        itemsCount: deserializeParam(
          data['items_count'],
          ParamType.int,
          false,
        ),
        totals: deserializeStructParam(
          data['totals'],
          ParamType.DataStruct,
          false,
          structBuilder: WooCartTotalsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'WooCartResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WooCartResponseStruct &&
        listEquality.equals(items, other.items) &&
        itemsCount == other.itemsCount &&
        totals == other.totals;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([const ListEquality().hash(items), itemsCount, totals]);
}

WooCartResponseStruct createWooCartResponseStruct({
  int? itemsCount,
  WooCartTotalsStruct? totals,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WooCartResponseStruct(
      itemsCount: itemsCount,
      totals: totals ?? (clearUnsetFields ? WooCartTotalsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WooCartResponseStruct? updateWooCartResponseStruct(
  WooCartResponseStruct? wooCartResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wooCartResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWooCartResponseStructData(
  Map<String, dynamic> firestoreData,
  WooCartResponseStruct? wooCartResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wooCartResponse == null) {
    return;
  }
  if (wooCartResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wooCartResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wooCartResponseData =
      getWooCartResponseFirestoreData(wooCartResponse, forFieldValue);
  final nestedData =
      wooCartResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wooCartResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWooCartResponseFirestoreData(
  WooCartResponseStruct? wooCartResponse, [
  bool forFieldValue = false,
]) {
  if (wooCartResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wooCartResponse.toMap());

  // Handle nested data for "totals" field.
  addWooCartTotalsStructData(
    firestoreData,
    wooCartResponse.hasTotals() ? wooCartResponse.totals : null,
    'totals',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(wooCartResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWooCartResponseListFirestoreData(
  List<WooCartResponseStruct>? wooCartResponses,
) =>
    wooCartResponses
        ?.map((e) => getWooCartResponseFirestoreData(e, true))
        .toList() ??
    [];
