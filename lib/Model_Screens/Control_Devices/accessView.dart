import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccessView extends StatefulWidget {
  const AccessView({Key? key}) : super(key: key);
  @override
  State<AccessView> createState() => AccessViewState();
}

class AccessViewState extends State<AccessView> {
  final _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Container(
        color: Colors.purple[50],
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Colors.black.withOpacity(0.2), width: 2),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/order.jpeg',
                    )),
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(45),
                          topLeft: Radius.circular(45),
                        ),
                        border: Border.all(
                            color: Colors.black.withOpacity(0.2), width: 2),
                      ),
                      child: FractionallySizedBox(
                        widthFactor: 1.0,
                        heightFactor: 0.6,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(43),
                              topLeft: Radius.circular(43)),
                          child: Image.asset(
                            'assets/material.jpeg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 80),
                        child: Column(
                          children: [
                            const Text(
                              ' ⚪️ Wait until a unique code will be delivered along with the box package',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              ' ⚪️ Enter the code in below box click on get access',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: TextField(
                                controller: _codeController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Enter 4 digit code here',
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 45.h,
                                  width: 130.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple[200],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Text(
                                      'Cancel order',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 45.h,
                                  width: 130.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple[200],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Text(
                                      'Get access ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
