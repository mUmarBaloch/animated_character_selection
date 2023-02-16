import '../models/dragon_model.dart';
import 'package:flutter/material.dart';

List<Dragon> dragons = [
  Dragon(
    image:'baby_dragon.png',
    name: 'Squirt',
    bgColor: Colors.yellowAccent,
   ),
    Dragon(
    image:'starter_dragon.png',
    name: 'Lirio',
    bgColor: Colors.blueAccent,
   ),

   Dragon(
    image: 'medium_dragon.png',
    name:'Blaze',
    bgColor: Colors.orangeAccent,
   ),
    Dragon(
    image: 'boss_dragon.png',
    name:'Ragnarok',
    bgColor: Color.fromARGB(255, 88, 84, 84),
   ),
];