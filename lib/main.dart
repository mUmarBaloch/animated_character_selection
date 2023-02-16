import 'data/dragons_data.dart';
import 'data/dragon_selector_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(home: MyApp()));
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
         
            return DragonSelector(color:dragons[index].bgColor,
            
            onTap: (){
           
            },
            height:currentIndex == index ? 300 : 280,
            image: 
            '${dragons[index].image}',
            
            );
          })),
    );
  }
}
