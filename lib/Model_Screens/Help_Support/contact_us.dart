import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/bg-2 (1).png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 30),
          child: Column(
            children: [
              Text(
                'Contact Us',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  BulletText('Mail us at: repairsduniya@gmail.com'),
                  SizedBox(
                    height: 60.h,
                  ),
                  BulletText('Our support 24/7 available: \n+91 9550589138'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;
  const BulletText(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\u25cf',
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
