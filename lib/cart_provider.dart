import 'package:flutter/material.dart';

class cartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cart = [];
  void addToCart(Map<String, dynamic> product) {
    cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> product) {
    cart.remove(product);
    notifyListeners();
  }
}