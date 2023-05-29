import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import '../pop_Up_Screen/booking_button.dart';

class Icons_widget extends StatefulWidget {
  final String name;

  final String img1;
  final String img2;

  Icons_widget(
    this.img1,
    this.img2,
    this.name,
  );
  @override
  State<Icons_widget> createState() => _Icons_widgetState();
}

class _Icons_widgetState extends State<Icons_widget> {
  final List<String> CarouseList = [];
  late VideoPlayerController _videocontroller;
  bool repair = false;
  bool install = false;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void addToMyList(String value) {
      CarouseList.add(value);
    }

    addToMyList(widget.img1);
    addToMyList(widget.img2);

    final List<Widget> imgSlider = CarouseList.map(
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
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SafeArea(
          child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  // _videocontroller.value.isInitialized
                  //     ? AspectRatio(
                  //         aspectRatio: _videocontroller.value.aspectRatio,
                  //         child: VideoPlayer(_videocontroller))
                  //     : Container(),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.topCenter,
                    child: Column(children: [
                      CarouselSlider(
                        items: imgSlider,
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height / 1.8,
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
                                padding: EdgeInsets.only(
                                    top: 8, left: 15, right: 15),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            widget.name,
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        // Container(
                                        //   width: 80,
                                        //   child: Text(
                                        //     'No booking Charges',
                                        //     style: TextStyle(
                                        //         fontSize: 15,
                                        //         fontWeight: FontWeight.bold,
                                        //         color: Colors.red.withOpacity(0.7)),
                                        //   ),
                                        // )
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                                255, 209, 247, 211),
                                          ),
                                          child: Flexible(
                                              child: Text(
                                                  '1932 bookings in April')),
                                        ),
                                      ],
                                    ),
                                    // Container(
                                    //   padding: EdgeInsets.all(10),
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(10),
                                    //     color: const Color.fromARGB(
                                    //         255, 209, 247, 211),
                                    //   ),
                                    //   child: Text('1932 bookings in April'),
                                    // ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 180, 221, 255),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.all(10),
                                                // decoration: BoxDecoration(
                                                //     borderRadius: BorderRadius.circular(10),
                                                //     color:
                                                //         const Color.fromARGB(255, 209, 247, 211)),
                                                child: Text(
                                                  'What we Offer',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.circle, size: 12),
                                              Text(
                                                ' ${widget.name} Installation',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.circle, size: 12),
                                              Text(
                                                ' ${widget.name} Repair',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.circle, size: 12),
                                              Text(
                                                ' Doorstep ${widget.name} Services',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: bookingButton()),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                ]),
              ),
            ),
          ],
        ),
      ));
    });
  }
}
