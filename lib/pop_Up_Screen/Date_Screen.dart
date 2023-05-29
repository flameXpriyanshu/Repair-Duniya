import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:repair_duniya/pop_Up_Screen/Show_Date.dart';

import 'package:repair_duniya/pop_Up_Screen/address.dart';

import 'package:intl/intl.dart';
import 'package:repair_duniya/pop_Up_Screen/address.dart';

class DateBottomSheet extends StatefulWidget {
  const DateBottomSheet({super.key});

  @override
  State<DateBottomSheet> createState() => _DateBottomSheetState();
}

class _DateBottomSheetState extends State<DateBottomSheet>
    with SingleTickerProviderStateMixin {
  bool showAdressSheet = true;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleContent() {
    setState(() {
      showAdressSheet = !showAdressSheet;
    });
  }

  Widget button(String Time) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
            height: 20.h,
            width: 110.w,
            // child: OutlinedButton(
            //     style: ButtonStyle(
            // backgroundColor: _hasBeenPressed
            //     ? MaterialStateProperty.all(Colors.black)
            //     : MaterialStateProperty.all(Colors.white),
            //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(30.0),
            //     side: BorderSide(width: 10.0, color: Colors.black),
            //   )),
            //   // overlayColor: MaterialStateProperty.resolveWith<Color?>(
            //   //   (Set<MaterialState> states) {
            //   //     if (states.contains(MaterialState.pressed))
            //   //       return Colors.black; //<-- SEE HERE
            //   //     return Colors.white; // Defer to the widget's default.
            //   //   },
            //   // ),
            // ),
            // onPressed: () {
            //   // setState(() {
            //   //   // _hasBeenPressed = !_hasBeenPressed;
            //   // });
            //   // ButtonStyle(
            //   //   backgroundColor:
            //   //       MaterialStateProperty.all(Colors.black),
            //   //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //   //     borderRadius: BorderRadius.circular(30.0),
            //   //     side: BorderSide(width: 10.0, color: Colors.black),
            //   //   )),
            //   // );
            // },
            child: Center(
              child: Text(
                Time,
                style: TextStyle(
                  fontSize: 15.sp,
                  // color: _hasBeenPressed ? Colors.white : Colors.black,
                ),
              ),
            )));
    //   ),
    // );
  }


  Widget Date_sheet(context) {
    final TextEditingController _Textcontroller = TextEditingController();
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 6,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select Date",
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 60.h,
                  child: Image.asset(
                      'assets/3d-render-calendar-page-with-green-tick-icon_107791-15944-removebg-preview.png'),
                ),
              ],

            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Date",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0), child: dateTimepicker()
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     minimumSize: Size.fromHeight(40),
              //     primary: Colors.grey.shade300,
              //   ),
              //   child: FittedBox(
              //     child: Text(
              //       "Date",
              //       style: TextStyle(fontSize: 20, color: Colors.black),
              //     ),
              //   ),
              //   onPressed: () {},
              // ),
              ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select Timing",
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 70.h,
                  child: Image.asset(
                      'assets/alarm-clock-concept-illustration_114360-14276-removebg-preview.png'),
                )
              ],

            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Select Timing",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),

            ),
          ),
          ToggleButtons(
            direction: Axis.horizontal,
            onPressed: (index) {
              setState(() {
                // The button that is tapped is set to true, and the others to false.
                for (int i = 0; i < _selectedTime.length; i++) {
                  _selectedTime[i] = i == index;
                }
              });
            },
            borderRadius: BorderRadius.circular(10),
            selectedColor: Colors.white,
            fillColor: Colors.blue,
            color: Colors.black,
            isSelected: _selectedTime,
            children: [
              button('Morning'),
              button('Afternoon'),
              button('Evening')
            ],
          ),

          Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Center(
                child: Text(
                  "Our Expert will arrive on your appointment Day and Time",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500),
                ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 45,
                width: 110,
                child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 10.0, color: Colors.black),
                      )),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.blue; //<-- SEE HERE
                          return Colors.white; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: () {
                      ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(width: 10.0, color: Colors.black),
                        )),
                      );
                    },
                    child: Text(
                      "Morning",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 45,
                width: 110,
                child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 10.0, color: Colors.black),
                      )),
                    ),
                    onPressed: () {
                      ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(width: 10.0, color: Colors.black),
                        )),
                      );
                    },
                    child: Text(
                      "Afternoon",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 50,
                width: 110,
                child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 10.0, color: Colors.black),
                      )),
                    ),
                    onPressed: () {
                      ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(width: 10.0, color: Colors.black),
                        )),
                      );
                    },
                    child: Text(
                      "Evening",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Our Expert will arrive on your appointment Day and Time",
                style: TextStyle(

                    fontSize: 20.sp,

                    fontSize: 25,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: IconButton(
                icon: Icon(Icons.arrow_forward_outlined),
                iconSize: 45,
                onPressed: toggleContent,
              ),
            ),
          ]),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        if (showAdressSheet) Date_sheet(context),
        if (!showAdressSheet) Address_sheet()
      ]),
    );
  }
}

class dateTimepicker extends StatefulWidget {
  const dateTimepicker({super.key});

  @override
  State<dateTimepicker> createState() => _dateTimepickerState();
}

class _dateTimepickerState extends State<dateTimepicker> {
  DateTime _selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('dd-MM-yyyy');
  void _showDatePicker(context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 2)))
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        // DateTime(pickedDate.day, pickedDate.month, pickedDate.year);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      _selectedDate == null
          ? Text(
              // DateFormat.yMd().format(_selectedDate),

              'No date Choosen',
              // : dateFormat.format(_selectedDate),
              style: TextStyle(fontSize: 20.sp, color: Colors.black),
            )
          // : GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3),
          //     shrinkWrap: true,
          //     // scrollDirection: Axis.horizontal,
          //     physics: NeverScrollableScrollPhysics(),
          //     itemCount: 3,
          //     itemBuilder: (context, index) => Padding(
          //       padding: EdgeInsets.all(10),
          //       child: Container(
          //         height: 20,
          //         width: 20,
          //         child: ElevatedButton(
          //           style: ButtonStyle(
          //               backgroundColor:
          //                   MaterialStateProperty.all(Colors.white),
          //               shape:
          //                   MaterialStateProperty.all(RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(30.0),
          //                 // side: BorderSide(width: 10.0, color: Colors.white),
          //               ))),
          //           onPressed: () {},
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               // Text('${FirstDate.day + index}'),
          //               Text(
          //                 DateFormat('EEEE').format(
          //                     FirstDate.add(Duration(days: index + 1))),
          //                 style: TextStyle(color: Colors.black),
          //               ),
          //               Text(
          //                 dateFormat.format(
          //                     FirstDate.add(Duration(days: index + 1))),
          //                 style: TextStyle(color: Colors.black, fontSize: 30),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),

          // children: List.generate(
          //     LastDate.day,
          //     (index) => Padding(
          //           padding: EdgeInsets.all(8),
          //           child: Column(mainAxisSize: MainAxisSize.min, children: [
          //             Text(
          //               "${index + 1}",
          //             ),
          //             () {
          //               final currentDate =
          //                   FirstDate.add(Duration(days: index + 1));

          //               final dateName = DateFormat('E').format(currentDate);
          //               return Text(dateName);
          //             }()
          //           ]),
          //         )),

          : Container(
              width: 150.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size.fromHeight(40),
                  primary: Colors.grey.shade300,
                ),
                child: Container(
                  child: Text(
                    dateFormat.format(_selectedDate),
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  _showDatePicker(context);
                },
              ),
            )

    return Column(children: [
      Text(
        _selectedDate == null
            // DateFormat.yMd().format(_selectedDate),

            ? 'No date Choosen'
            : dateFormat.format(_selectedDate),
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(40),
          primary: Colors.grey.shade300,
        ),
        child: Container(
          child: Text(
            "Date",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        onPressed: () {
          _showDatePicker(context);
        },
      )
    ]);
  }
}
// void Date_sheet(context) {
//   final TextEditingController _Textcontroller = TextEditingController();
//   showModalBottomSheet(
//       context: context,
//       builder: (context) => Container(
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10))),
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.start, children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 5),
//                 child: Text(
//                   "Date",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size.fromHeight(40),
//                     primary: Colors.grey.shade300,
//                   ),
//                   child: FittedBox(
//                     child: Text(
//                       "Date",
//                       style: TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                   ),
//                   onPressed: () {},
//                 ),
//               ),
//               SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Text(
//                   "Select Timing",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: SizedBox(
//                     height: 50,
//                     width: 110,
//                     child: OutlinedButton(
//                         style: ButtonStyle(
//                           shape:
//                               MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             side: BorderSide(width: 10.0, color: Colors.black),
//                           )),
//                           overlayColor:
//                               MaterialStateProperty.resolveWith<Color?>(
//                             (Set<MaterialState> states) {
//                               if (states.contains(MaterialState.hovered))
//                                 return Colors.blue; //<-- SEE HERE
//                               return Colors
//                                   .white; // Defer to the widget's default.
//                             },
//                           ),
//                         ),
//                         onPressed: () {
//                           ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Colors.blue),
//                             shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.0),
//                               side:
//                                   BorderSide(width: 10.0, color: Colors.black),
//                             )),
//                           );
//                         },
//                         child: Text(
//                           "Morning",
//                           style: TextStyle(fontSize: 15, color: Colors.black),
//                         )),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: SizedBox(
//                     height: 50,
//                     width: 110,
//                     child: OutlinedButton(
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.white),
//                           shape:
//                               MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             side: BorderSide(width: 10.0, color: Colors.black),
//                           )),
//                         ),
//                         onPressed: () {
//                           ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Colors.blue),
//                             shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.0),
//                               side:
//                                   BorderSide(width: 10.0, color: Colors.black),
//                             )),
//                           );
//                         },
//                         child: Text(
//                           "Afternoon",
//                           style: TextStyle(fontSize: 15, color: Colors.black),
//                         )),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: SizedBox(
//                     height: 50,
//                     width: 110,
//                     child: OutlinedButton(
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.white),
//                           shape:
//                               MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             side: BorderSide(width: 10.0, color: Colors.black),
//                           )),
//                         ),
//                         onPressed: () {
//                           ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Colors.blue),
//                             shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.0),
//                               side:
//                                   BorderSide(width: 10.0, color: Colors.black),
//                             )),
//                           );
//                         },
//                         child: Text(
//                           "Evening",
//                           style: TextStyle(fontSize: 15, color: Colors.black),
//                         )),
//                   ),
//                 ),
//               ]),
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Center(
//                   child: Text(
//                     "Our Expert will arrive on your appointment Day and Time",
//                     style: TextStyle(
//                         fontSize: 25,
//                         color: Colors.grey.shade600,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: IconButton(
//                     icon: Image.asset('assets/right-arrow.png'),
//                     color: Colors.black,
//                     onPressed: () {
//                       Address_sheet(context);
//                     },
//                   ),
//                 ),
//               )
//             ]),
//           ));
// }

// // void _showDatePicker() {
// //   showDatePicker(
// //       context: context,
// //       initialDate: DateTime.now(),
// //       firstDate: DateTime(DateTime.now().month),
// //       lastDate: DateTime(DateTime.now().month));
// // }
