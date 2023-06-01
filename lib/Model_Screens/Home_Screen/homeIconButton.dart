import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/icon_Screen.dart/painter.dart';
import 'package:repair_duniya/icon_Screen.dart/salon.dart';
import 'package:repair_duniya/icon_Screen.dart/screen_widgets.dart';

// import 'package:Repair-Duniya/lib/icon_Screen.dart/tv.dart';
// import 'package:repair-duniya/icon_Screen.dart/tv.dart';

Widget homeIconText(String text) {
  return Text(text,
      textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.bold));
}

Widget AC(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: ExactAssetImage('assets/air-conditioner.png'),
              fit: BoxFit.scaleDown,
            ),
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/ac-service-mistribabu.png",
                        "screen_assets/ac1.jpeg",
                        "Air Conditioner")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('AC'),
        ],
      ),
    ],
  );
}

Widget Washer(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
                image: ExactAssetImage('assets/washing-machine.png'),
                fit: BoxFit.contain),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/wash1.jpeg",
                        "screen_assets/wash2.jpeg",
                        "Washing Machine")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Washer'),
        ],
      ),
    ],
  );
}

Widget Oven(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image:const  DecorationImage(
              image: ExactAssetImage('assets/oven.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/oven1.jpeg",
                        "screen_assets/oven2.jpg",
                        "Microwave Oven")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Oven'),
        ],
      ),
    ],
  );
}

Widget Refrigerator(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/refrigerator.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/repair-work-fridge-appliance-.jpg",
                        "screen_assets/fridge1.jpg",
                        "Refrigerator")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Refrigerator'),
        ],
      ),
    ],
  );
}

Widget Fan(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/Fan.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/fan1.jpg",
                        "screen_assets/fan2.jpg",
                        "Fan")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Fan'),
        ],
      ),
    ],
  );
}

Widget Motercycle(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/motorbike.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/oven1.jpeg",
                        "screen_assets/oven2.jpg",
                        "Motorcycle")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Motercycle'),
        ],
      ),
    ],
  );
}

Widget Television(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/tv.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Icons_widget(
                        "screen_assets/tv2.jpg",
                        "screen_assets/tv3.jpg",
                        "Television")),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Television'),
        ],
      ),
    ],
  );
}

Widget More(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/More.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {},
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('More'),
        ],
      ),
    ],
  );
}

Widget Salon(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            // border: Border.all(width: 1, color: Colors.grey),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/salon.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySalon()),
              );
            },
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Men Salon'),
        ],
      ),
    ],
  );
}

Widget Painting(BuildContext context) {
  return SizedBox(
    child: Column(
      children: [
        Material(
          type: MaterialType.transparency,
          child: Ink(
            height: 50.w,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              // border: Border.all(width: 1, color: Colors.grey),
              color: Colors.white,
              image: const DecorationImage(
                image: ExactAssetImage('assets/paint.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPainter()),
                );
              },
            ),
          ),
        ),
        Column(
          children: [
            homeIconText('Painting'),
          ],
        ),
      ],
    ),
  );
}

Widget Cleaning(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/cleaning.png'),
              fit: BoxFit.scaleDown,

  return Container(
    child: Column(
      children: [
        Material(
          type: MaterialType.transparency,
          child: Ink(
            height: 50.w,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
             // border: Border.all(width: 1, color: Colors.grey),
              color: Colors.white,
              image: DecorationImage(
                image: ExactAssetImage('assets/cleaning.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            child: InkWell(
              onTap: () {},
            ),
          ),
          child: InkWell(
            onTap: () {},
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('Cleaning'),
        ],
      ),
    ],
  );
}

Widget More_service(BuildContext context) {
  return Column(
    children: [
      Material(
        type: MaterialType.transparency,
        child: Ink(
          height: 50.w,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),

            color: Colors.white,
            image: const DecorationImage(
              image: ExactAssetImage('assets/More.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: InkWell(
            onTap: () {},
          ),
        ),
      ),
      Column(
        children: [
          homeIconText('More'),
        ],
      ),
    ],
  );
}

Widget _buildBody() {
  return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: SizedBox(
        height: 180.h,
        width: 500.w,
        child: Stack(children: <Widget>[
          Image.asset(
            "assets/RoomGarden.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            colorBlendMode: BlendMode.darken,
          ),
         const  Center(child: Text("hello")),
        ]),
      ));
}

Widget gas = Column(
  children: [
    IconButton(
        onPressed: () {}, icon:const  Icon(Icons.local_gas_station_outlined)),
    homeIconText('Gas'),
  ],
);
