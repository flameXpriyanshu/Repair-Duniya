import 'package:flutter/material.dart';

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
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  BulletText('Save Upto Rs.175/- on every booking'),
                  SizedBox(
                    height: 30,
                  ),
                  BulletText('No visiting charges'),
                  SizedBox(
                    height: 30,
                  ),
                  BulletText('Get acces to free checkups for your appliances'),
                  SizedBox(
                    height: 50,
                  ),
                  BulletText(
                      'Win gift vouchers worth upto Rs.500/- from selected brand'),
                  SizedBox(
                    height: 50,
                  ),
                  BulletText('Get technician within one hour'),
                  SizedBox(
                    height: 30,
                  ),
                  BulletText('Get top rated technicians to your doorsteps'),
                  SizedBox(
                    height: 50,
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
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
