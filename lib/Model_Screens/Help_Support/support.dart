import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Help_Support/contact_us.dart';
import 'package:repair_duniya/Model_Screens/Help_Support/gift_vouchers.dart';
import 'package:repair_duniya/Model_Screens/Help_Support/raise_complaint.dart';
import 'package:repair_duniya/Model_Screens/Help_Support/why_subscription.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffeeedf5),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff3624ff),
                      Color(0xffe233f2),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: const [0.2, 0.9],
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(8),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(0, 0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Support',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, right: 35),
                        child: RichText(
                            text: TextSpan(
                                // style: ,
                                children: [
                              TextSpan(
                                  text: 'Need Some Help?\n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp)),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 10.h,
                              )),
                              TextSpan(
                                text: 'Popular help resources',
                              )
                            ])),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset(
                        'assets/icon_new.png',
                        scale: 4,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 4.5,
              child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            color: Color(0xffb5b3b3))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Something...',
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.25,
              height: 280.h,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCard(context, 'Contact Us',
                          'assets/contact-removebg-preview.png', ContactUs()),
                      _buildCard(
                          context,
                          'Raise Complaint',
                          'assets/complaint-removebg-preview.png',
                          RaiseComplaint()),
                    ],
                  ),
                  SizedBox(
                      height: 8.h), // Adjust the spacing between rows as needed
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCard(
                          context,
                          'Why Subscription?',
                          'assets/subscription-removebg-preview.png',
                          WhySubscription()),
                      _buildCard(context, 'Gift Vouchers',
                          'assets/gift-removebg-preview.png', GiftVouchers()),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 3.3 + 278,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text('FREQUENTLY ASKED QUESTIONS',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 0.1)),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.3 + 309,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildList(context, '1', 'Title 1',
                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the1500s'),
                    _buildList(context, '2', 'Title 2',
                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the1500s'),
                    _buildList(context, '3', 'Title 3',
                        'Lorem Ipsum has been the industry\'s standard dummy text ever since the1500s')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCard(
    BuildContext context, String text, String img, Widget widget) {
  return GestureDetector(
    onTap: () {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35.0),
          ),
        ),
        builder: (BuildContext context) {
          return widget;
        },
      );
    },
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(-8, -8), blurRadius: 8, color: Colors.white38),
            BoxShadow(
                offset: Offset(3, 3), blurRadius: 4, color: Color(0xffb5b3b3))
          ]),
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 2.5),
      width: MediaQuery.of(context).size.width / 2.4,
      height: 120,
      child: Center(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: Image.asset(
                  img,
                ),
              )),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          //Text(text, style: TextStyle(color: Colors.black38, fontSize: 12, fontWeight: FontWeight.w400,),),
        ],
      )),
    ),
  );
}

Widget _buildList(
    BuildContext context, String num, String title, String content) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
              offset: Offset(-8, -8), blurRadius: 8, color: Colors.white38),
          BoxShadow(
              offset: Offset(3, 3), blurRadius: 4, color: Color(0xffb5b3b3))
        ]),
    child: ExpansionTile(
      leading: Text(
        num,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 19),
      ),
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text(
              content,
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ],
    ),
  );
}
