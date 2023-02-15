import 'package:flutter/material.dart';

class DragonSelector extends StatelessWidget {
  final Color color;
  final Function onTap;
  final double height;
  const DragonSelector(this.color, this.onTap, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: AnimatedContainer(
        curve: Curves.bounceOut,
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        height: height,
        width: 200,
      ),
    );
  }
}
