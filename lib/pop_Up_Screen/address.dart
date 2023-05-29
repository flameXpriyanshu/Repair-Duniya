import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';

Widget Address_sheet() {
  final TextEditingController _Textcontroller = TextEditingController();
  // showModalBottomSheet(
  //     context: context,

  //     builder: (context) =>
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    child: Column(children: [
      Container(
        height: 6,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 45),
        child: Center(
            child: Text(
          "Select Address",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
              icon: Image.asset('assets/right-arrow.png'),
              color: Colors.black,
              onPressed: () {
                DateBottomSheet;
              }),
        ),
      )
    ]),
  );
}
