import 'package:flutter/material.dart';

class DragonSelector extends StatelessWidget {
  final Color color;
  final Function onTap;
  final double height;
  final String image;
  final double imageSize;
  final String name;
  final bool isTapped;
  const DragonSelector({required this.isTapped,required this.color, required this.onTap, required this.height,required this.image,super.key, required this.imageSize,required this.name, });
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Stack(
          children: [
            AnimatedContainer(
              padding: EdgeInsets.only(bottom: 20,top:isTapped==true?300:0),
             
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isTapped == true ? 0 :15),
            gradient:LinearGradient(colors:isTapped == false ? [color,color.withOpacity(.5)] :  [color ,Colors.blueAccent.withOpacity(.2)], begin : Alignment.topCenter,end:Alignment.bottomCenter)
            ),
            height: height ,
            width:isTapped == true ? MediaQuery.of(context).size.width : 200,
            child: Align(alignment: isTapped==true ? Alignment.topCenter : Alignment.bottomCenter, child: Text(name,style:TextStyle(fontSize: 25),),),
          ),
            CharacterImage(image:image,imageSize:imageSize,isTapped:isTapped),
          ],
        ),
      ),
    );
  }
}

class CharacterImage extends StatelessWidget {
  final bool isTapped;
  final String image;
  final double imageSize;
  const CharacterImage({
    required this.image,
    super.key, required this.imageSize,
    required this.isTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:0,
      right:0,
      child: AnimatedContainer(
   
    alignment: isTapped == false? Alignment.center : Alignment.topRight,
    padding: EdgeInsets.all(isTapped == true ? 10 : 0),
        height: isTapped == false ? 250 : 290,
       width : isTapped == false ?200 :230,
        curve: Curves.easeIn
        ,duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          image: DecorationImage(
         fit: BoxFit.contain,
         alignment: Alignment.center  ,
            image: AssetImage(image),
    
          ),
        ),),
    );
  }
}
