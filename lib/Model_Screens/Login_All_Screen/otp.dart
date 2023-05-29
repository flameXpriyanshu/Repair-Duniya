import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:repair_duniya/Model_Screens/Home_Screen/home.dart';
import 'package:repair_duniya/Model_Screens/Login_All_Screen/phone.dart';
import '../../main.dart';

class MyOtp extends StatefulWidget {
  final List<String> imgList = ["assets/otp1.jpg", "assets/otp2.jpg"];
  MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  int _current = 0;
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(20),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    final List<Widget> imgSlider = widget.imgList
        .map(
          (item) => Container(
            height: 500,
            width: 1000,
            child: Stack(
              children: [
                Image.asset(item, fit: BoxFit.fill, width: double.infinity),
              ],
            ),
          ),
        )
        .toList();
    var code = "";
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.topCenter,
        child: Column(children: [
          CarouselSlider(
            items: imgSlider,
            options: CarouselOptions(
              viewportFraction: 1,
              enlargeCenterPage: true,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgList.map((url) {
              int index = widget.imgList.indexOf(url);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.black : Colors.grey),
              );
            }).toList(),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Enter the OTP',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'We have sent an OTP to 9336113936',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 25,
          ),
          Pinput(
            defaultPinTheme: defaultPinTheme,
            length: 6,
            showCursor: true,
            onChanged: (value) {
              code = value;
            },
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: MyPhone.verify, smsCode: code);
                  await auth.signInWithCredential(credential);
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('home_board', (route) => false);
                } catch (e) {
                  print("Wrong OTP");
                }
              },
              child: Text('Verify code'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'phone', (route) => false);
                  },
                  child: Text(
                    'Edit phone number?',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ]),
      )),
    );
  }
}
