import 'package:flutter/material.dart';

class DragonSelector extends StatelessWidget {
  final Color color;
  final Function onTap;
  final double height;
  final String image;
  const DragonSelector({required this.color, required this.onTap, required this.height,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Stack(
          children: [
            AnimatedContainer(
            curve: Curves.bounceOut,
            duration: const Duration(milliseconds: 600),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            height: height,
            width: 200,
          ),
            CharacterImage(image:image),
          ],
        ),
      ),
    );
  }
}

class CharacterImage extends StatelessWidget {
  final String image;
  const CharacterImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 200,
     width : 200,
      curve: Curves.easeIn
      ,duration: const Duration(milliseconds: 600),
      decoration: BoxDecoration(
        image: DecorationImage(
       
          image: AssetImage(image),

        ),
      ),);
  }
}
