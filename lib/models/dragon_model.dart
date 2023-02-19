import 'package:flutter/material.dart';

class Dragon {
  String name;
  String image;
  Color bgColor;

  double damageRate;
  double flyingRate;
  double fireRate;
  Dragon(
      {required this.name,
      required this.image,
      required this.bgColor,
      required this.damageRate,
      required this.flyingRate,
      required this.fireRate});
}
