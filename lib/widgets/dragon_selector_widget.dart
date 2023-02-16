import 'package:flutter/material.dart';

class DragonSelector extends StatelessWidget {
  final Color color;
  final Function onTap;
  final double height;
  final String image;
  final double imageSize;
  final String name;
  const DragonSelector({required this.color, required this.onTap, required this.height,required this.image,super.key, required this.imageSize,required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Stack(
          children: [
            AnimatedContainer(
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            gradient:LinearGradient(colors:[color,color.withOpacity(.5)], begin : Alignment.topCenter,end:Alignment.bottomCenter)
            ),
            height: height,
            width: 200,
            child: Align(alignment: Alignment.bottomCenter, child: Text(name),),
          ),
            CharacterImage(image:image,imageSize:imageSize),
          ],
        ),
      ),
    );
  }
}

class CharacterImage extends StatelessWidget {
  final String image;
  final double imageSize;
  const CharacterImage({
    required this.image,
    super.key, required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      height: 250,
     width : 200,
      curve: Curves.easeIn
      ,duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        image: DecorationImage(
       fit: BoxFit.contain,
       alignment: Alignment.center  ,
          image: AssetImage(image),

        ),
      ),);
  }
}
