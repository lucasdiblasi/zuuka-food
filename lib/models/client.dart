import 'package:flutter/material.dart';

class Client {
  final String id;
  final String name;
  final String imageUrl;
  final String address;

  const Client ({
   @required this.id,
    @required this.name,
   @required this.imageUrl,
   @required this.address,
  });
}