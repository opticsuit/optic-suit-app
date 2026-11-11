import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartToken = prefs.getString('ff_cartToken') ?? _cartToken;
    });
    _safeInit(() {
      _wishlistProductIds = prefs
              .getStringList('ff_wishlistProductIds')
              ?.map(int.parse)
              .toList() ??
          _wishlistProductIds;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userDiet = '';
  String get userDiet => _userDiet;
  set userDiet(String value) {
    _userDiet = value;
  }

  List<String> _userAllergens = [];
  List<String> get userAllergens => _userAllergens;
  set userAllergens(List<String> value) {
    _userAllergens = value;
  }

  void addToUserAllergens(String value) {
    userAllergens.add(value);
  }

  void removeFromUserAllergens(String value) {
    userAllergens.remove(value);
  }

  void removeAtIndexFromUserAllergens(int index) {
    userAllergens.removeAt(index);
  }

  void updateUserAllergensAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userAllergens[index] = updateFn(_userAllergens[index]);
  }

  void insertAtIndexInUserAllergens(int index, String value) {
    userAllergens.insert(index, value);
  }

  List<String> _userIngredientDislikes = [];
  List<String> get userIngredientDislikes => _userIngredientDislikes;
  set userIngredientDislikes(List<String> value) {
    _userIngredientDislikes = value;
  }

  void addToUserIngredientDislikes(String value) {
    userIngredientDislikes.add(value);
  }

  void removeFromUserIngredientDislikes(String value) {
    userIngredientDislikes.remove(value);
  }

  void removeAtIndexFromUserIngredientDislikes(int index) {
    userIngredientDislikes.removeAt(index);
  }

  void updateUserIngredientDislikesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userIngredientDislikes[index] = updateFn(_userIngredientDislikes[index]);
  }

  void insertAtIndexInUserIngredientDislikes(int index, String value) {
    userIngredientDislikes.insert(index, value);
  }

  /// App state cartToken
  String _cartToken = '';
  String get cartToken => _cartToken;
  set cartToken(String value) {
    _cartToken = value;
    prefs.setString('ff_cartToken', value);
  }

  /// App state wishlistProductIds
  List<int> _wishlistProductIds = [];
  List<int> get wishlistProductIds => _wishlistProductIds;
  set wishlistProductIds(List<int> value) {
    _wishlistProductIds = value;
    prefs.setStringList(
        'ff_wishlistProductIds', value.map((x) => x.toString()).toList());
  }

  void addToWishlistProductIds(int value) {
    wishlistProductIds.add(value);
    prefs.setStringList('ff_wishlistProductIds',
        _wishlistProductIds.map((x) => x.toString()).toList());
  }

  void removeFromWishlistProductIds(int value) {
    wishlistProductIds.remove(value);
    prefs.setStringList('ff_wishlistProductIds',
        _wishlistProductIds.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromWishlistProductIds(int index) {
    wishlistProductIds.removeAt(index);
    prefs.setStringList('ff_wishlistProductIds',
        _wishlistProductIds.map((x) => x.toString()).toList());
  }

  void updateWishlistProductIdsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    wishlistProductIds[index] = updateFn(_wishlistProductIds[index]);
    prefs.setStringList('ff_wishlistProductIds',
        _wishlistProductIds.map((x) => x.toString()).toList());
  }

  void insertAtIndexInWishlistProductIds(int index, int value) {
    wishlistProductIds.insert(index, value);
    prefs.setStringList('ff_wishlistProductIds',
        _wishlistProductIds.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
