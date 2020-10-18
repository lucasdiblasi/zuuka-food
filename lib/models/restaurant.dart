import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

enum Status {
  Open,
  Close,
}

class Restaurant {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String description;
  final int tempEnt;
  final Color color;
  final Status status;

  const Restaurant ({
   @required this.id,
   @required this.categories,
   @required this.title,
   @required this.imageUrl,
   @required this.description,
   @required this.tempEnt,
   @required this.status,
   this.color = Colors.white
  });

  String get statusText {
    switch (status) {
      case Status.Open:
       return 'Open';
      case Status.Close:
       return 'Close';
      default:
        return 'undefined';
    }
  }
}