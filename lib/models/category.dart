import 'package:flutter/material.dart';

class Category {

  final String id;
  final String title;
  final Color color;
  final String imgUrl;


  const Category({
     @required this.id,
     @required this.title,
     @required this.imgUrl,
     this.color = Colors.white,
  });
}