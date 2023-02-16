import 'data/dragons_data.dart';
import 'widgets/dragon_selector_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      fontFamily: 
      'TradeWinds'
    ),
    home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  PageController pageController = PageController(viewportFraction: 0.6);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(
         onPageChanged: (value) =>setState(() {
           currentIndex = value;
         }),
          controller: pageController,
          itemCount: dragons.length,
          itemBuilder: ((context, index) { 
         
            return DragonSelector(name:dragons[index].name,color:dragons[index].bgColor,
            
            onTap: (){
           
            },
            height:currentIndex == index ? 300 : 270,
            image: 
            dragons[index].image,
            imageSize: currentIndex == index ? 260: 200,
            );
          })),
    );
  }
}
