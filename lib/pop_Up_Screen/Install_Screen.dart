import 'package:flutter/material.dart';
import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';
import 'package:repair_duniya/pop_Up_Screen/Describe_Screen.dart';

void showCustomModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(35),
    )),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    builder: (BuildContext context) {
      return ModalBotoomSheet();
    },
  );
}

class ModalBotoomSheet extends StatefulWidget {
  const ModalBotoomSheet({super.key});

  @override
  State<ModalBotoomSheet> createState() => _ModalBotoomSheetState();
}

class _ModalBotoomSheetState extends State<ModalBotoomSheet> {
  bool showDescribeSheet = true;
  bool showDateSheet = true;

  void toggleContent() {
    setState(() {
      showDescribeSheet = !showDescribeSheet;
    });
  }

  void toggleContent_install() {
    setState(() {
      showDateSheet = !showDateSheet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        if (showDescribeSheet && showDateSheet)
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Center(
                    child: Text(
                  "Select Service",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: null,
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.blue;
                                  return Color.fromARGB(255, 242, 241, 241);
                                },
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                // side: BorderSide(
                                //     width: 10.0, color: Colors.black),
                              )),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                          // child: OutlinedButton(
                          //     style: ButtonStyle(
                          //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(30.0),
                          //         side: BorderSide(width: 10.0, color: Colors.black),
                          //       )),
                          //       overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          //         (Set<MaterialState> states) {
                          //           if (states.contains(MaterialState.hovered))
                          //             return Colors.blue; //<-- SEE HERE
                          //           return Colors.black;
                          //           // Defer to the widget's default.
                          //         },
                          //       ),
                          //     ),
                          onPressed: toggleContent_install,
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => DateBottomSheet(),
                          // ));
                          // ButtonStyle(
                          //   backgroundColor:
                          //       MaterialStateProperty.all(Colors.blue),
                          //   shape:
                          //       MaterialStateProperty.all(RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(30.0),
                          //     side: BorderSide(width: 10.0, color: Colors.black),
                          //   )),
                          // );

                          child: Text(
                            "Installation",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 158, 205, 244),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.blue;
                                  return Colors.blueAccent;
                                },
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                // side: BorderSide(
                                //     width: 10.0, color: Colors.black),
                              )),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                          // child: OutlinedButton(
                          //     style: ButtonStyle(
                          //       backgroundColor:
                          //           MaterialStateProperty.all(Colors.white),
                          //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(30.0),
                          //         side: BorderSide(width: 10.0, color: Colors.black),
                          //       )),
                          //     ),
                          onPressed: toggleContent,

                          // ButtonStyle(
                          //   backgroundColor:
                          //       MaterialStateProperty.all(Colors.blue),
                          //   shape:
                          //       MaterialStateProperty.all(RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(30.0),
                          //     side: BorderSide(width: 10.0, color: Colors.black),
                          //   )),
                          // );

                          child: Text(
                            "Repair",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),

              // Padding(
              //   padding: const EdgeInsets.only(top: 30, left: 10),
              //   child: Align(
              //     alignment: Alignment.bottomRight,
              //     child: IconButton(
              //         icon: Image.asset('assets/right-arrow.png'),
              //         color: Colors.black,
              //         onPressed: toggleContent
              //         // () {

              //         //   // Navigator.of(context).push(MaterialPageRoute(
              //         //   //     builder: (context) => DEScribeSheet()));
              //         // },
              //         ),
              //   ),
              // )
            ]),
          ),
        if (!showDescribeSheet) modalBottomSheet(),
        if (!showDateSheet) DateBottomSheet()
      ]),
    );
  }
}


// void bottomsheet(context) {
//   showModalBottomSheet(
//       context: context,
//       builder: (context) => Container(
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10))),
//             child: Column(children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 45),
//                 child: Center(
//                     child: Text(
//                   "Select Service",
//                   style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
//                 )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 child: SizedBox(
//                   height: 50,
//                   width: 380,
//                   child: OutlinedButton(
//                       style: ButtonStyle(
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                           side: BorderSide(width: 10.0, color: Colors.black),
//                         )),
//                         overlayColor: MaterialStateProperty.resolveWith<Color?>(
//                           (Set<MaterialState> states) {
//                             if (states.contains(MaterialState.hovered))
//                               return Colors.blue; //<-- SEE HERE
//                             return Colors
//                                 .white; // Defer to the widget's default.
//                           },
//                         ),
//                       ),
//                       onPressed: () {
//                         ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.blue),
//                           shape:
//                               MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             side: BorderSide(width: 10.0, color: Colors.black),
//                           )),
//                         );
//                       },
//                       child: Text(
//                         "Installation",
//                         style: TextStyle(fontSize: 25, color: Colors.black),
//                       )),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 child: SizedBox(
//                   height: 50,
//                   width: 380,
//                   child: OutlinedButton(
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.white),
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                           side: BorderSide(width: 10.0, color: Colors.black),
//                         )),
//                       ),
//                       onPressed: () {
//                         ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.blue),
//                           shape:
//                               MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             side: BorderSide(width: 10.0, color: Colors.black),
//                           )),
//                         );
//                       },
//                       child: Text(
//                         "Repair",
//                         style: TextStyle(fontSize: 25, color: Colors.black),
//                       )),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 30, left: 10),
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: IconButton(
//                     icon: Image.asset('assets/right-arrow.png'),
//                     color: Colors.black,
//                     onPressed: () {
//                       Describe_sheet(context);
//                     },
//                   ),
//                 ),
//               )
//             ]),
//           ));
// }
