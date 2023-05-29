import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Buy_Appliances/product_screen.dart';

class product_card extends StatelessWidget {
  String img;
  product_card(this.img);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.white,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => product_screen(img)));
                  },
                  child: Image.asset(
                    "screen_assets/${img}.jpg",
                    fit: BoxFit.cover,
                    height: 200.h,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  img,
                  style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7)),
                ),
                SizedBox(height: 5),
                Text(
                  "Rate",
                  style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.red.withOpacity(0.7)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
