import 'dart:math';

import 'package:flutter/foundation.dart';
import 'meal.dart';

class CartItem {

  final String id;
  final String title;
  final int quantity;
  final double price;

 const CartItem ({
  @required this.id,
  @required this.title,
  @required this.quantity,
  @required this.price, 
});
}

class Cart with ChangeNotifier{
  Map<String, CartItem> _items;

  Map<String, CartItem> get item {
    return {..._items};
  
  }

  void addItem(Meal meal) {
    if(_items.containsKey(meal.id)) {
      _items.update(
        meal.id, 
        (existingItem) => CartItem(
           id: existingItem.id ,
           title: existingItem.title,
           quantity: existingItem.quantity + 1,
           price: existingItem.price,
        ),
      );
    } else {
       _items.putIfAbsent(
         meal.id, 
         () => CartItem(
           id: Random.secure().nextDouble().toString(),
           title: meal.title,
           price: meal.price, 
           quantity: 1,
           )
       );
    }
  }
}  