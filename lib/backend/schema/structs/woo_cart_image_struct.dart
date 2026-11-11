// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct WooCartImage
class WooCartImageStruct extends FFFirebaseStruct {
  WooCartImageStruct({
    /// WooCartImage.src
    String? src,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _src = src,
        super(firestoreUtilData);

  // "src" field.
  String? _src;
  String get src => _src ?? '';
  set src(String? val) => _src = val;

  bool hasSrc() => _src != null;

  static WooCartImageStruct fromMap(Map<String, dynamic> data) =>
      WooCartImageStruct(
        src: data['src'] as String?,
      );

  static WooCartImageStruct? maybeFromMap(dynamic data) => data is Map
      ? WooCartImageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'src': _src,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'src': serializeParam(
          _src,
          ParamType.String,
        ),
      }.withoutNulls;

  static WooCartImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      WooCartImageStruct(
        src: deserializeParam(
          data['src'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WooCartImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WooCartImageStruct && src == other.src;
  }

  @override
  int get hashCode => const ListEquality().hash([src]);
}

WooCartImageStruct createWooCartImageStruct({
  String? src,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WooCartImageStruct(
      src: src,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WooCartImageStruct? updateWooCartImageStruct(
  WooCartImageStruct? wooCartImage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wooCartImage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWooCartImageStructData(
  Map<String, dynamic> firestoreData,
  WooCartImageStruct? wooCartImage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wooCartImage == null) {
    return;
  }
  if (wooCartImage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wooCartImage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wooCartImageData =
      getWooCartImageFirestoreData(wooCartImage, forFieldValue);
  final nestedData =
      wooCartImageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wooCartImage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWooCartImageFirestoreData(
  WooCartImageStruct? wooCartImage, [
  bool forFieldValue = false,
]) {
  if (wooCartImage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wooCartImage.toMap());

  // Add any Firestore field values
  mapToFirestore(wooCartImage.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWooCartImageListFirestoreData(
  List<WooCartImageStruct>? wooCartImages,
) =>
    wooCartImages?.map((e) => getWooCartImageFirestoreData(e, true)).toList() ??
    [];
