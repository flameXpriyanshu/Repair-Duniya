import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_Bottom_Sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 5,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 221, 221),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Text(
              "Total Quantity",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                CupertinoIcons.minus,
                size: 18,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "01",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                CupertinoIcons.minus,
                size: 18,
                color: Colors.redAccent,
              ),
            ),
          ]),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Payment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                "Rate",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              decoration: BoxDecoration(
                color: Color(0xFFFD725A),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
