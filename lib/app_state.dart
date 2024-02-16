import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CartItemtypeStruct> _cart = [
    CartItemtypeStruct.fromSerializableMap(jsonDecode(
        '{\"menuItemRef\":\"/menuitems/example\",\"quantity\":\"0\",\"specialinstructions\":\"Hello World\"}'))
  ];
  List<CartItemtypeStruct> get cart => _cart;
  set cart(List<CartItemtypeStruct> _value) {
    _cart = _value;
  }

  void addToCart(CartItemtypeStruct _value) {
    _cart.add(_value);
  }

  void removeFromCart(CartItemtypeStruct _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  void updateCartAtIndex(
    int _index,
    CartItemtypeStruct Function(CartItemtypeStruct) updateFn,
  ) {
    _cart[_index] = updateFn(_cart[_index]);
  }

  void insertAtIndexInCart(int _index, CartItemtypeStruct _value) {
    _cart.insert(_index, _value);
  }
}
