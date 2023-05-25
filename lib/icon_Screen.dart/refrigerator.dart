import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class MyRefrigerator extends StatefulWidget {
  final List<String> RefrigeratorList = ["screen_assets/ac_repair.jpg"];
  MyRefrigerator({super.key});

  @override
  State<MyRefrigerator> createState() => _MyRefrigeratorState();
}

class _MyRefrigeratorState extends State<MyRefrigerator> {
  late VideoPlayerController _videocontroller;
  bool repair = false;
  bool install = false;
  final TextEditingController _controller = TextEditingController();
  // @override
  // void initState() {
  //   super.initState();
  //   _videocontroller =
  //       VideoPlayerController.asset('video/Refrigerator_repair.mp4')
  //         ..initialize().then((_) {
  //           setState(() {});
  //           _videocontroller.play();
  //         });
  //   _videocontroller.setLooping(true);
  // }

  // void dispose() {
  //   _videocontroller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imgSlider = widget.RefrigeratorList.map(
      (item) => Container(
        height: 500,
        width: 1000,
        child: Stack(
          children: [
            Image.asset(item, fit: BoxFit.fill, width: double.infinity),
          ],
        ),
      ),
    ).toList();
    int _current = 0;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(children: [
        // _videocontroller.value.isInitialized
        //     ? AspectRatio(
        //         aspectRatio: _videocontroller.value.aspectRatio,
        //         child: VideoPlayer(_videocontroller))
        //     : Container(),
        Container(
          alignment: Alignment.topCenter,
          child: Column(children: [
            CarouselSlider(
              items: imgSlider,
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: widget.RefrigeratorList.map((url) {
            //     int index = widget.RefrigeratorList.indexOf(url);
            //     return Container(
            //       width: 8,
            //       height: 8,
            //       margin: EdgeInsets.symmetric(
            //         vertical: 10,
            //         horizontal: 3,
            //       ),
            //       decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           color: _current == index ? Colors.black : Colors.grey),
            //     );
            //   }).toList(),
            // ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: ExactAssetImage('assets/booking.png'),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "1,932 Booking in April",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          minLines: 5,
                          maxLines: 200,
                          controller: _controller,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintMaxLines: 2,
                            hintText:
                                'Refrigerator repair \nRefrigerator servicing',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade400, fontSize: 22),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black26),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black26),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                              child: Container(
                                height: 70,
                                width: 177,
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'No Visiting',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'Charges',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                              ),
                              child: Container(
                                height: 70,
                                width: 175.5,
                                color: Colors.grey.shade400,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'discount : %',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Only For ',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'SUBSCRIBE ',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Users',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0, left: 7),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 177.5,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Color.fromARGB(
                                                255, 63, 69, 145);
                                          return Colors
                                              .blue; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                    child: Text("Urgent Booking")),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            SizedBox(
                              height: 50,
                              width: 177.5,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Color.fromARGB(
                                                255, 63, 69, 145);
                                          return Colors
                                              .blue; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                    child: Text("Normal Booking")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Why urgent booking?',
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ]),
    )));
  }
}
