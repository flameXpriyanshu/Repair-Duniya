import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftVouchers extends StatelessWidget {
  const GiftVouchers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.3,
      child: Stack(children: [
        Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/bg-2 (1).png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
          child: Column(
            children: [
              Text(
                'Gift Vouchers',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 13.h,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  BulletText(
                      'Gift voucher will not issued for all bookings it will be depends up on your repair price'),
                  SizedBox(
                    height: 46.h,
                  ),
                  BulletText(
                      'After completion of your  repair gift voucher will be shared with you through the E-mail/Whatsapp'),
                  SizedBox(
                    height: 60.h,
                  ),
                  BulletText(
                      'Selected vouchers applicable, only after the repair has been done by our technicians successfully'),
                  SizedBox(
                    height: 60.h,
                  ),
                  BulletText(
                      'You have to use a gift voucher before its vailidity date which is mentioned on it'),
                  SizedBox(
                    height: 46.h,
                  ),
                  BulletText(
                      'If physical stores accept these gift vouchers tell them the voucher number, Otherwise use it digitally'),
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
          '\u{1F381}',
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15.sp,
            ),
          ),
        ),
      ],
    );
  }
}
