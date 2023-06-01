import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Control_Devices/accessView.dart';

// ignore: must_be_immutable
class OrderConfirmationView extends StatelessWidget {
  OrderConfirmationView({super.key});

  FocusNode nameFocusnode = FocusNode();
  FocusNode mobileFocusnode = FocusNode();
  FocusNode pinFocusnode = FocusNode();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  FocusNode buttonFocusnode = FocusNode();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      //backgroundColor: Colors.blue[100],
      backgroundColor: Colors.purple[50],
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200.h,
                    width: 300.h,
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        // color: Colors.purple.withOpacity(0.2),
                        border: Border.all(
                            color: Colors.black.withOpacity(0.2), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/AC.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(0.2), width: 2),
                    image: const DecorationImage(
                        image: AssetImage("assets/material.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Order Confirmation",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 20.h),
                        Container(
                          // width: 360.w,
                          //height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.5),
                              width: 1,
                            ),
                          ),
                          child: ListTile(
                            tileColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            leading: Container(
                              height: 60.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                //color: Colors.purple[300],
                                // color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage("assets/AC.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            title: Text("XYZ....",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              "999/-",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Container(
                              height: 30.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                        size: 16.h,
                                      )),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        size: 16.h,
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        TextFormField(
                          focusNode: nameFocusnode,
                          keyboardType: TextInputType.text,
                          controller: nameController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelText: 'Enter Name',
                              hintText: ' Enter Name',
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onFieldSubmitted: (value) {
                            FocusScope.of(context)
                                .requestFocus(mobileFocusnode);
                          },
                        ),
                        SizedBox(height: 20.h),
                        TextFormField(
                          focusNode: mobileFocusnode,
                          keyboardType: TextInputType.text,
                          controller: mobileController,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              fillColor: Colors.white.withOpacity(0.6),
                              filled: true,
                              labelText: 'Enter Mobile Number',
                              hintText: ' Enter Mobile Number',
                              prefixText: '+91',
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(pinFocusnode);
                          },
                        ),
                        SizedBox(height: 20.h),
                        TextFormField(
                          focusNode: pinFocusnode,
                          keyboardType: TextInputType.text,
                          controller: pinController,
                          decoration: InputDecoration(
                              fillColor: Colors.white.withOpacity(0.6),
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.black,
                              ),
                              labelText: 'Enter Pincode',
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.black),
                              hintText: ' Enter Pincode',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onFieldSubmitted: (value) {
                            FocusScope.of(context)
                                .requestFocus(buttonFocusnode);
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 40.h,
                          width: 140.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: Colors.purple[200]),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AccessView()));
                            },
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
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
          )),
    );
  }
}
