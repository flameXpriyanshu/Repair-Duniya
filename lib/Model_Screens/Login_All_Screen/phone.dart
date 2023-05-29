import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Login_All_Screen/otp.dart';
import 'package:repair_duniya/Model_Screens/Login_All_Screen/phone.dart';

class MyPhone extends StatefulWidget {
  final List<String> imgList = ["assets/login-2.jpg", "assets/login-3.jpg"];

  MyPhone({super.key});
  static String verify = "";
  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController _countryCode = TextEditingController();
  var phone = "";
  @override
  void initState() {
    _countryCode.text = "+91"; // TODO: implement initState
    super.initState();
  }

  String CountryCode = '+91';
  int _current = 0;
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final List<Widget> imgSlider = widget.imgList
        .map(
          (item) => Container(
            height: 500.h,
            width: 1000.w,
            child: Stack(
              children: [
                Image.asset(item, fit: BoxFit.fill, width: double.infinity),
              ],
            ),
          ),
        )
        .toList();
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
                  width: 8.w,
                  height: 8.h,
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
              height: 7.h,
            ),
            Text(
              'Lets get started',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              'Verify your account using OTP',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: 55.h,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 50.w,
                    child: TextButton(
                        onPressed: () {
                          showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                                flagSize: 20,
                                textStyle: TextStyle(fontSize: 10.sp),
                                inputDecoration: InputDecoration(
                                  hintText: "Start Typing to Search",
                                  labelText: 'Search',
                                )),
                            onSelect: (Country value) {
                              print(value.countryCode.toString());
                              print(value.phoneCode.toString());
                              CountryCode = value.phoneCode.toString();
                              setState(() {});
                            },
                          );
                        },
                        child: Text(CountryCode.toString())),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter phone number"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: 45.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${_countryCode.text + phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      MyPhone.verify = verificationId;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => MyOtp()));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                },
                child: Text('Send the code'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
