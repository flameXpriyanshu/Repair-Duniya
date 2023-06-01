import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Buy_Appliances/product_screen.dart';

class product_card extends StatelessWidget {
  String img;
  String title;
  String subtitle;
  product_card(this.img, this.title, this.subtitle);

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
                            builder: (context) =>
                                product_screen(img, title, subtitle)));
                  },
                  child: Image.asset(
                    "screen_assets/${img}.jpg",
                    fit: BoxFit.cover,
                    height: 200.h,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 25.h,
                    width: 85.w,
                    color: Colors.redAccent.withOpacity(0.6),
                    child: const Center(
                      child: Text(
                        "30% Discount",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // SizedBox(
        //   height: 10.h,
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7)),
                ),
                const SizedBox(
                  height: 2,

                SizedBox(
                  height: 2.h,
                ),
                ClipRRect(
                  child: Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
                // Add more content widgets as needed


                const SizedBox(height: 5),

                SizedBox(height: 4.h),
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
