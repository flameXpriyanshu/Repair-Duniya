import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repair_duniya/Model_Screens/Buy_Appliances/buy_appliances.dart';
import 'package:repair_duniya/Model_Screens/Control_Devices/deviceinstallView.dart';
import 'package:repair_duniya/Model_Screens/Map_Screen/location_search_screen.dart';
import 'package:repair_duniya/models/constant.dart';

import '../../main.dart';
import '../Wallet/wallet.dart';
import 'drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:repair_duniya/Model_Screens/Home_Screen/homeIconButton.dart';

class Myhome extends StatefulWidget {
  final List<String> homeList = ["assets/Offer-1.jpg", "assets/Offer-2.jpg"];
  Myhome({super.key});

  @override
  State<Myhome> createState() => _homeState();
}

class _homeState extends State<Myhome> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _current = 0;
  final List<Map<String, dynamic>> _allUsers =
      []; //here we will put our search items,
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final List<Widget> homeSlider = widget.homeList
        .map(
          (item) => Container(
            height: 250.h,
            width: 500.w,
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(item,
                        fit: BoxFit.fill, width: double.infinity)),
              ],
            ),
          ),
        )
        .toList();
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Mydrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        //APP BAR
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(
              fontFamily: "Montserrat-Black",
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
          icon: SvgPicture.asset(
            "assets/menu-bar.svg",
            height: 30.h,
            width: 20.w,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Wallet()));
                  },
                  icon:
                  //Image.asset('assets/icons8-wallet.png',scale: 1.8,),
                  Icon(
                    Icons.account_balance_wallet,
                    color: Colors.orange.shade600,
                  )
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.yellow.shade800,
                  )),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 10),
            child: SizedBox(
              height: 50.h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchLocationScreen()));
                  },
                  icon: SvgPicture.asset(
                    "assets/location-pin1-com.svg",
                    height: 30.h,
                  ),
                  label: ListTile(
                    title: Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Kormangala",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                  // label: Column(
                  //   children: [
                  //     Text(
                  //       "Location",
                  //       style: TextStyle(
                  //           fontSize: 20, fontWeight: FontWeight.bold),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.only(left: 15),
                  //       child: Text(
                  //         "Kormangala",
                  //         style: TextStyle(
                  //             fontSize: 13,
                  //             fontWeight: FontWeight.w500,
                  //             color: Colors.grey),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    fixedSize: const Size(double.infinity, double.infinity),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            //search BAR
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "Search Appliance",
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            //Sliding Bar
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  CarouselSlider(
                    items: homeSlider,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    //Sliding indicator
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.homeList.map((url) {
                      int index = widget.homeList.indexOf(url);
                      return Container(
                        width: 27.w,
                        height: 8.h,
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 1,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: _current == index
                                ? BorderRadius.all(Radius.circular(4))
                                : null,
                            shape: _current == index
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            color: _current == index
                                ? Colors.grey.shade600
                                : Colors.grey.shade400),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Divider(
              thickness: 2.5,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 12.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "What's broken",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Fan(context),
                      Refrigerator(context),
                      Oven(context),
                      Television(context),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AC(context),
                    Motercycle(context),
                    Washer(context),
                    More(context),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Divider(
                    thickness: 2.5,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 180.h,
                      width: 500.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                7.0, // Move to right 7.0 horizontally
                                8.0, // Move to bottom 8.0 Vertically
                              ))
                        ],
                      ),
                      child: Stack(children: <Widget>[
                        Image.asset(
                          "assets/RoomGarden.jpg",
                          width: 460.w,
                          height: 180.h,
                          color: (Colors.black.withOpacity(0.4)),
                          fit: BoxFit.fill,
                          colorBlendMode: BlendMode.darken,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 40.0, left: 30.0, bottom: 8.0),
                            child: Text(
                              "Control Your Device",
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                          top: 120,
                          left: 120,
                          child: SizedBox(
                            height: 40,
                            width: 140,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 1,
                                side: const BorderSide(
                                    width: 2, color: Colors.white),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: Colors.pink[900],
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DeviceInstallView()));
                              },
                              child: const Text(
                                "Let's Start",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 12.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Services',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Salon(context),
                    Painting(context),
                    Cleaning(context),
                    More_service(context),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 180.h,
                      width: 500.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                7.0, // Move to right 7.0 horizontally
                                8.0, // Move to bottom 8.0 Vertically
                              ))
                        ],
                      ),
                      child: Stack(children: <Widget>[
                        Image.asset(
                          "assets/Store.jpg",
                          width: 460.w,
                          height: 180.h,
                          color: (Colors.black.withOpacity(0.4)),
                          fit: BoxFit.fill,
                          colorBlendMode: BlendMode.darken,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 30.0, bottom: 8.0),
                          child: Column(
                            children: [
                              Text(
                                'Buy New/Old',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Appliance',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 120,
                          child: SizedBox(
                            height: 40,
                            width: 140,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 1,
                                side: const BorderSide(
                                    width: 2, color: Colors.white),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: Colors.blue[900],
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Buy_appliances()));
                              },
                              child: const Text(
                                "Shop Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
