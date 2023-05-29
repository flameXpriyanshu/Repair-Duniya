import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhySubscription extends StatelessWidget {
  const WhySubscription({Key? key}) : super(key: key);

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
                'Why Subscription?',
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
                  BulletText('Save Upto Rs.175/- on every booking'),
                  SizedBox(
                    height: 30.h,
                  ),
                  BulletText('No visiting charges'),
                  SizedBox(
                    height: 30.h,
                  ),
                  BulletText('Get acces to free checkups for your appliances'),
                  SizedBox(
                    height: 50.h,
                  ),
                  BulletText(
                      'Win gift vouchers worth upto Rs.500/- from selected brand'),
                  SizedBox(
                    height: 50.h,
                  ),
                  BulletText('Get technician within one hour'),
                  SizedBox(
                    height: 30.h,
                  ),
                  BulletText('Get top rated technicians to your doorsteps'),
                  SizedBox(
                    height: 50.h,
                  ),
                  BulletText('24/7 support'),
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
          '\u2714',
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
