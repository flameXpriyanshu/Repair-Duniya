import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class custom_Bottom_Sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 5.h,
            width: 50.w,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 221, 221),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(children: [
            Text(
              "Total Quantity",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 20.w,
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
              width: 8.w,
            ),
            Text(
              "01",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5.h,
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
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Payment",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                "Rate",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
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
                  fontSize: 17.sp,
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
