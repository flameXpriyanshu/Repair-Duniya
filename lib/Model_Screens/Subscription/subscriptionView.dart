import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionView extends StatefulWidget {
  const SubscriptionView({super.key});

  @override
  State<SubscriptionView> createState() => SubscriptionViewState();
}

class SubscriptionViewState extends State<SubscriptionView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Stack(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff3624ff),
                Color(0xffe233f2),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: "Subscription ",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Plans",
                            style: TextStyle(
                                fontSize: 33.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("Choose the best plan that works for you",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white.withOpacity(0.8),
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 530.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //**   SIlVER CARD   */

                        Container(
                          width: 310.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/SilverCard.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Silver Plan",
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/rupee-indian .png",
                                          height: 28.h,
                                          color: Colors.black,
                                        ),
                                        Text("49/-",
                                            style: TextStyle(
                                              fontSize: 35.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                DataTable(
                                    // ignore: deprecated_member_use
                                    dataRowHeight: (ScreenUtil().screenHeight -
                                            ScreenUtil().setHeight(200)) /
                                        9,
                                    headingRowHeight: 4.h,
                                    columns: const <DataColumn>[
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                    ],
                                    rows: <DataRow>[
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Free urgent booking access (Get technician in 1 hour)',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'No visiting charges',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Get top rated technicians',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            '24*7 Customer support',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Chance to win Gift vouchers worths upto Rs.700/- from selected brands',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                    ]),
                                SizedBox(
                                  height: 120.h,
                                ),
                                SizedBox(
                                  height: 35.h,
                                  width: 130.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        backgroundColor: Colors.grey[200]),
                                    onPressed: () {},
                                    child: Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),

                        //**   GOLDEN CARD   */

                        Container(
                          width: 310.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/GoldenCard.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Gold Plan",
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/rupee-indian .png",
                                          height: 28.h,
                                          color: Colors.black,
                                        ),
                                        Text("149/-",
                                            style: TextStyle(
                                              fontSize: 35.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                DataTable(
                                    // ignore: deprecated_member_use
                                    dataRowHeight: (ScreenUtil().screenHeight -
                                            ScreenUtil().setHeight(195)) /
                                        9,
                                    headingRowHeight: 6.h,
                                    columns: const <DataColumn>[
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                    ],
                                    rows: <DataRow>[
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'One time free appliance checkup (Geyser, cooler, T.V, etc.)',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Free urgent booking access',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'No visiting charges',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Get free Appliances maintenance tips weekly on Whatsapp & Mail',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Chance to win Gift vouchers worths upto Rs.700/- from selected brands',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Get top rated technicians',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Get repaired invoice/Bill to Whatsapp & Mail',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            '24*7 Customer support',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                    ]),
                                SizedBox(
                                  height: 35.h,
                                  width: 130.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        backgroundColor: Colors.yellow[700]),
                                    onPressed: () {},
                                    child: Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),

                        //**   DIAMOND CARD   */

                        Container(
                          width: 310.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/DiamondCard.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Diamond Plan",
                                        style: TextStyle(
                                          fontSize: 25.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/rupee-indian .png",
                                          height: 20.h,
                                          color: Colors.black,
                                        ),
                                        Text("249/-",
                                            style: TextStyle(
                                              fontSize: 29.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                DataTable(
                                    // ignore: deprecated_member_use
                                    dataRowHeight:
                                        (MediaQuery.of(context).size.height -
                                                285) /
                                            9,
                                    headingRowHeight: 4.h,
                                    columns: const <DataColumn>[
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                      DataColumn(
                                        label: Text(''),
                                      ),
                                    ],
                                    rows: <DataRow>[
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Unlimited Free urgent booking access.(Get technician in 1 hour)',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Free new appliances home delivery',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'No visiting charges',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Digital subscription card',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Chance to win Gift vouchers worths upto Rs.700/- from selected brands',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Get top rated technicians',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            'Get repaired invoice/Bill to Whatsapp & Mail',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                      DataRow(cells: <DataCell>[
                                        DataCell(
                                          Text(
                                            '24*7 Customer support',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        const DataCell(
                                          Icon(Icons.check,
                                              color: Colors.black),
                                        ),
                                      ]),
                                    ]),
                                SizedBox(
                                  height: 35.h,
                                  width: 130.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        backgroundColor:
                                            Colors.blueAccent[100]),
                                    onPressed: () {},
                                    child: Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Slide for more..",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.8),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ListTile myRowDataIcon(IconData iconVal, String rowVal) {
//   return ListTile(
//     leading: Icon(iconVal, color: new Color(0xffffffff)),
//     title: Text(
//       rowVal,
//       style: TextStyle(
//         color: Colors.white,
//       ),
//     ),
//   );
// }
