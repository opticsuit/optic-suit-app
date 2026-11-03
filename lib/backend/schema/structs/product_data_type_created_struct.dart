// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataTypeCreatedStruct extends FFFirebaseStruct {
  ProductDataTypeCreatedStruct({
    int? id,
    String? name,
    String? price,
    String? image,
    String? categories,
    String? brand,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _price = price,
        _image = image,
        _categories = categories,
        _brand = brand,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "categories" field.
  String? _categories;
  String get categories => _categories ?? '';
  set categories(String? val) => _categories = val;

  bool hasCategories() => _categories != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  static ProductDataTypeCreatedStruct fromMap(Map<String, dynamic> data) =>
      ProductDataTypeCreatedStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        price: data['price'] as String?,
        image: data['image'] as String?,
        categories: data['categories'] as String?,
        brand: data['brand'] as String?,
      );

  static ProductDataTypeCreatedStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataTypeCreatedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'price': _price,
        'image': _image,
        'categories': _categories,
        'brand': _brand,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductDataTypeCreatedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductDataTypeCreatedStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        categories: deserializeParam(
          data['categories'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductDataTypeCreatedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataTypeCreatedStruct &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        image == other.image &&
        categories == other.categories &&
        brand == other.brand;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, price, image, categories, brand]);
}

ProductDataTypeCreatedStruct createProductDataTypeCreatedStruct({
  int? id,
  String? name,
  String? price,
  String? image,
  String? categories,
  String? brand,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductDataTypeCreatedStruct(
      id: id,
      name: name,
      price: price,
      image: image,
      categories: categories,
      brand: brand,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductDataTypeCreatedStruct? updateProductDataTypeCreatedStruct(
  ProductDataTypeCreatedStruct? productDataTypeCreated, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productDataTypeCreated
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductDataTypeCreatedStructData(
  Map<String, dynamic> firestoreData,
  ProductDataTypeCreatedStruct? productDataTypeCreated,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productDataTypeCreated == null) {
    return;
  }
  if (productDataTypeCreated.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      productDataTypeCreated.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productDataTypeCreatedData = getProductDataTypeCreatedFirestoreData(
      productDataTypeCreated, forFieldValue);
  final nestedData =
      productDataTypeCreatedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      productDataTypeCreated.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductDataTypeCreatedFirestoreData(
  ProductDataTypeCreatedStruct? productDataTypeCreated, [
  bool forFieldValue = false,
]) {
  if (productDataTypeCreated == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productDataTypeCreated.toMap());

  // Add any Firestore field values
  mapToFirestore(productDataTypeCreated.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductDataTypeCreatedListFirestoreData(
  List<ProductDataTypeCreatedStruct>? productDataTypeCreateds,
) =>
    productDataTypeCreateds
        ?.map((e) => getProductDataTypeCreatedFirestoreData(e, true))
        .toList() ??
    [];
