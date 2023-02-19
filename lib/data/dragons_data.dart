import '../models/dragon_model.dart';
import 'package:flutter/material.dart';

List<Dragon> dragons = [
  Dragon(
    image:'baby_dragon.png',
    name: 'Squirt',
    bgColor: Colors.yellowAccent,
    damageRate: 0.2,
    flyingRate: 0.5,
    fireRate: 0.1,
   ),
    Dragon(
    image:'starter_dragon.png',
    name: 'Lirio',
    bgColor: Colors.blueAccent,
      damageRate: 0.4,
    flyingRate: 0.6,
    fireRate: 0.3,
   ),

   Dragon(
    image: 'medium_dragon.png',
    name:'Blaze',
    bgColor: Colors.orangeAccent,
      damageRate: 0.6,
    flyingRate: 0.7,
    fireRate: 0.5,
   ),
    Dragon(
    image: 'boss_dragon.png',
    name:'Ragnarok',
    bgColor: Color.fromARGB(255, 88, 84, 84),
      damageRate: 1,
    flyingRate: 0.8,
    fireRate: 0.9,
   ),
];