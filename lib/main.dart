import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:repair_duniya/Model_Screens/Buy_Appliances/buy_appliances.dart';
import 'package:repair_duniya/Model_Screens/Home_Screen/drawer.dart';
import 'package:repair_duniya/Model_Screens/Home_boarding_Screen/home_board.dart';
import 'package:repair_duniya/Model_Screens/Subscription/subscriptionView.dart';
import 'package:repair_duniya/icon_Screen.dart/ac.dart';
import 'package:repair_duniya/icon_Screen.dart/fan.dart';
import 'package:repair_duniya/icon_Screen.dart/oven.dart';
import 'package:repair_duniya/icon_Screen.dart/painter.dart';
import 'package:repair_duniya/icon_Screen.dart/refrigerator.dart';
import 'package:repair_duniya/icon_Screen.dart/salon.dart';
import 'package:repair_duniya/icon_Screen.dart/washer.dart';
import 'package:repair_duniya/Model_Screens/Map_Screen/location_search_screen.dart';
import 'package:repair_duniya/Model_Screens/Map_Screen/order_tracking_page.dart';
import 'package:repair_duniya/Model_Screens/Login_All_Screen/otp.dart';
import 'package:repair_duniya/Model_Screens/Onboarding_Screen/page_indicator.dart';
import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';
import 'package:repair_duniya/pop_Up_Screen/Describe_Screen.dart';
//import 'package:repair_duniya/pop_Up_Screen/Show_Date.dart';


import 'Model_Screens/Onboarding_Screen/data.dart';
import 'Model_Screens/Home_Screen/home.dart';
import 'Model_Screens/Login_All_Screen/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '',
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (context) => MyOtp(),
      'home': (context) => Myhome(),
      'oven': (context) => MyOven(),
      'ac': (context) => MyAc(),
      'fan': (context) => MyFan(),
      'washer': (context) => MyWasher(),
      'painter': (context) => MyPainter(),
      'refrigerator': (context) => MyRefrigerator(),
      'salon': (context) => MySalon(),
      'location_search_screen': (context) => SearchLocationScreen(),
      'home_board': (context) => home_board(),
      'subscriptionView': (context) => SubscriptionView(),
    },
    home: Myhome(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late PageController _controller;
  int currentPage = 0;
  bool isLastPage = false;
  late AnimationController animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: currentPage,
    );
    animationController =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _scaleAnimation = Tween(begin: 0.6, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
            tileMode: TileMode.clamp,
            begin: Alignment.topCenter,
            stops: [0.0, 1.0],
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView.builder(
              itemCount: pageList.length,
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                  isLastPage = currentPage == pageList.length - 1;
                  if (isLastPage) {
                    animationController.forward();
                  } else {
                    animationController.reset();
                  }
                });
                print(isLastPage);
              },
              itemBuilder: (context, index) => AnimatedBuilder(
                animation: _controller,
                builder: (context, child) => animatedPageViewBuilder(index),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 55.0,
              width: 160.0,
              child: PageIndicator(currentPage, pageList.length),
            ),
            Positioned(
              right: 30.0,
              bottom: 30.0,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: isLastPage
                    ? FloatingActionButton(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                        onPressed: () {
                          Navigator.pushNamed(context, 'phone');
                        },
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget animatedPageViewBuilder(int index) {
    PageModel page = pageList[index];
    double delta;
    double y = 1.0;

    if (_controller.position.haveDimensions) {
      delta = (_controller.page! - index);
      y = delta.abs().clamp(0.0, 1.0);
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Lottie.asset(page.imageUrl,
              height: 240, reverse: true, repeat: true, fit: BoxFit.fill),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              child: Text(
                page.title,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Montserrat-Medium",
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Text(
                page.body,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Montserrat-Medium",
                    color: Colors.grey.shade600),
              ),
            ),
          )
        ],
      ),
    );
  }
}

GradientText(String title,
    {required LinearGradient gradient, required TextStyle style}) {}
