import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final List<String> restaurant;
  final String title;
  final String imageUrl;
  final String description;
  final int quantity;
  final double price;
  final List<String> complement;
  final int tempEnt;

  const Meal ({
   @required this.id,
   @required this.restaurant,
   @required this.title,
   @required this.imageUrl,
   @required this.description,
   @required this.quantity,
   @required this.price,
   @required this.complement,
   @required this.tempEnt,
  });
}