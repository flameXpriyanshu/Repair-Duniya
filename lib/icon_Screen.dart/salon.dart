import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class MySalon extends StatefulWidget {
  final List<String> SalonList = ["screen_assets/salon_repair.png"];
  MySalon({super.key});

  @override
  State<MySalon> createState() => _MySalonState();
}

class _MySalonState extends State<MySalon> {
  late VideoPlayerController _videocontroller;
  bool repair = false;
  bool install = false;
  final TextEditingController _controller = TextEditingController();
  // @override
  // void initState() {
  //   super.initState();
  //   _videocontroller = VideoPlayerController.asset('video/Salon_repair.mp4')
  //     ..initialize().then((_) {
  //       setState(() {});
  //       _videocontroller.play();
  //     });
  //   _videocontroller.setLooping(true);
  // }

  // void dispose() {
  //   _videocontroller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final List<Widget> imgSlider = widget.SalonList.map(
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
                //   children: widget.SalonList.map((url) {
                //     int index = widget.SalonList.indexOf(url);
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
                Column(
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
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/booking.png'),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "1,932 Booking in April",
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
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
                              hintText: 'Salon Booking',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 22.sp),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black26),
                              ),
                              focusedBorder: const OutlineInputBorder(
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
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                ),
                                child: Container(
                                  height: 70.h,
                                  width: 160.w,
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            'No Visiting',
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Charges',
                                            style: TextStyle(
                                                fontSize: 18.sp,
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
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                ),
                                child: Container(
                                  height: 70.h,
                                  width: 160.w,
                                  color: Colors.grey.shade400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            'discount : %',
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Only For ',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  ' SUBSCRIBED',
                                                  style: TextStyle(
                                                      fontSize: 13.sp,
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Users',
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
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
                          height: 70.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50.h,
                              width: 150.w,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
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
                                    child: Text(
                                      "Urgent Booking",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            SizedBox(
                              height: 50.h,
                              width: 150.w,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
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
                                    child: Text(
                                      "Normal Booking",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                ' Why urgent booking?',
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
