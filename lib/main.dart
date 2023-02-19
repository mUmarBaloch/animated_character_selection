import 'data/dragons_data.dart';
import 'models/dragon_model.dart';
import 'widgets/dragon_selector_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(theme: ThemeData(fontFamily: 'TradeWinds'), home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController pageController = PageController(viewportFraction: 0.6);
  int currentIndex = 0;
  double height = 0.0;
  double width = 200;
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            onPageChanged: (value) => setState(() {
                  currentIndex = value;
                }),
            controller: isTapped == true
                ? PageController(viewportFraction: 1)
                : pageController,
            itemCount: dragons.length,
            itemBuilder: ((context, index) {
              return DragonSelector(
                name: dragons[index].name,
                color: dragons[index].bgColor,
                isTapped: isTapped,
                onTap: () async {
                  setState(() {
                    // dragons.removeWhere((element) => element != dragons[index]);
                    isTapped = true;
                  });
                  await Future.delayed(Duration(milliseconds: 800));
                  // ignore: use_build_context_synchronously
                  showModalBottomSheet(
                      context: context,
                      
                      barrierColor: Colors.transparent,
                      elevation: 0.0,
                      builder: (context) {
                        return Container(
                            padding: EdgeInsets.all(8),
      height:200,
      decoration:BoxDecoration(
        color:Colors.blue.withOpacity(.8),
        image:DecorationImage(image:AssetImage('glassEffect.png') ,fit:BoxFit.cover ),
      ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              moreInfoWidget(context, dragons[index],
                                  dragons[index].damageRate, 'Damage Rate'),
                              SizedBox(height: 8),
                              moreInfoWidget(context, dragons[index],
                                  dragons[index].fireRate, 'Fire Rate'),
                              SizedBox(height: 8),
                              moreInfoWidget(context, dragons[index],
                                  dragons[index].flyingRate, 'Flying Rate'),
                            ],
                          ),
                        );
                      });
                },
                height: isTapped == false
                    ? currentIndex == index
                        ? 300
                        : 270
                    : MediaQuery.of(context).size.height,
                image: dragons[index].image,
                imageSize: currentIndex == index ? 260 : 200,
              );
            })),
      ],
    ));
  }

  SizedBox moreInfoWidget(
      BuildContext context, Dragon dragonDetails, double rate, String title) {
    return SizedBox(
      width:MediaQuery.of(context).size.width,
      height:30,

      child: Stack(
        children: [
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: 30, 
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width * rate,
                decoration: BoxDecoration(
                  color: dragonDetails.bgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )),
          Container(
            height: 30,
            child: Center(
              child: Text(title),
            ),
          )
        ],
      ),
    );
  }
}
