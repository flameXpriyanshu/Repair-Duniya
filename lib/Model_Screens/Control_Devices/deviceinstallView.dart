import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Control_Devices/orderconfirmatoinView.dart';

class DeviceInstallView extends StatelessWidget {
  const DeviceInstallView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.purple[50],
      //backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200.h,
                  width: 300.h,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    //color: Colors.purple.withOpacity(0.2),
                    border: Border.all(
                        color: Colors.black.withOpacity(0.2), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/AC.jpeg"), fit: BoxFit.cover),
                  ),
                ),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("Get your Device Installed",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.h),
                      Text(
                          " ⚪️ On/Off your Ac,Light,Fan,TV,   etc..through the App.",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 20.h),
                      Text(
                          " ⚪️ To get appliance installed, you need to book a service request.",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 20.h),
                      Text(
                          " ⚪️ After your device is deliverd,install it with the help of our expert.",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400)),
                      SizedBox(height: 20.h),
                      Text(
                          " ⚪️ You will get the price and more details on the order confirmation page.",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400)),
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
                            backgroundColor: Colors.purple[200],
                            // backgroundColor: Colors.blue[300],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OrderConfirmationView()));
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
        ),
      ),
    );
  }
}
