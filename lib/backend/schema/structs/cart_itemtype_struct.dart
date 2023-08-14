// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemtypeStruct extends FFFirebaseStruct {
  CartItemtypeStruct({
    DocumentReference? menuItemRef,
    int? quantity,
    String? specialinstructions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _menuItemRef = menuItemRef,
        _quantity = quantity,
        _specialinstructions = specialinstructions,
        super(firestoreUtilData);

  // "menuItemRef" field.
  DocumentReference? _menuItemRef;
  DocumentReference? get menuItemRef => _menuItemRef;
  set menuItemRef(DocumentReference? val) => _menuItemRef = val;
  bool hasMenuItemRef() => _menuItemRef != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "specialinstructions" field.
  String? _specialinstructions;
  String get specialinstructions => _specialinstructions ?? '';
  set specialinstructions(String? val) => _specialinstructions = val;
  bool hasSpecialinstructions() => _specialinstructions != null;

  static CartItemtypeStruct fromMap(Map<String, dynamic> data) =>
      CartItemtypeStruct(
        menuItemRef: data['menuItemRef'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        specialinstructions: data['specialinstructions'] as String?,
      );

  static CartItemtypeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CartItemtypeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'menuItemRef': _menuItemRef,
        'quantity': _quantity,
        'specialinstructions': _specialinstructions,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuItemRef': serializeParam(
          _menuItemRef,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'specialinstructions': serializeParam(
          _specialinstructions,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartItemtypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemtypeStruct(
        menuItemRef: deserializeParam(
          data['menuItemRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['restaurants', 'menuitems'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        specialinstructions: deserializeParam(
          data['specialinstructions'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartItemtypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemtypeStruct &&
        menuItemRef == other.menuItemRef &&
        quantity == other.quantity &&
        specialinstructions == other.specialinstructions;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([menuItemRef, quantity, specialinstructions]);
}

CartItemtypeStruct createCartItemtypeStruct({
  DocumentReference? menuItemRef,
  int? quantity,
  String? specialinstructions,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemtypeStruct(
      menuItemRef: menuItemRef,
      quantity: quantity,
      specialinstructions: specialinstructions,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemtypeStruct? updateCartItemtypeStruct(
  CartItemtypeStruct? cartItemtype, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItemtype
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemtypeStructData(
  Map<String, dynamic> firestoreData,
  CartItemtypeStruct? cartItemtype,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItemtype == null) {
    return;
  }
  if (cartItemtype.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartItemtype.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemtypeData =
      getCartItemtypeFirestoreData(cartItemtype, forFieldValue);
  final nestedData =
      cartItemtypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartItemtype.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemtypeFirestoreData(
  CartItemtypeStruct? cartItemtype, [
  bool forFieldValue = false,
]) {
  if (cartItemtype == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItemtype.toMap());

  // Add any Firestore field values
  cartItemtype.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemtypeListFirestoreData(
  List<CartItemtypeStruct>? cartItemtypes,
) =>
    cartItemtypes?.map((e) => getCartItemtypeFirestoreData(e, true)).toList() ??
    [];
