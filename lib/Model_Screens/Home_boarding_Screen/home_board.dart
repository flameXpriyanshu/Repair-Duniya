import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class home_board extends StatelessWidget {
  home_board({super.key});

  FocusNode emailFocusnode = FocusNode();
  FocusNode usernameFocusnode = FocusNode();
  FocusNode mobileFocusnode = FocusNode();
  FocusNode buttonFocusnode = FocusNode();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 200.h,
                          width: 200.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/logo sqaure.png",
                                  ),
                                  fit: BoxFit.cover))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: Text(
                        "Repairs\nDuniya",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 420.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/Boat minimal.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Register Now & Avail More Offers",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          TextFormField(
                            focusNode: usernameFocusnode,
                            keyboardType: TextInputType.text,
                            controller: usernameController,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person,
                                ),
                                labelText: 'Enter UserName',
                                hintText: ' Enter UserName',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(emailFocusnode);
                            },
                            // //** UserName validation */
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          TextFormField(
                            focusNode: emailFocusnode,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.alternate_email,
                              ),
                              labelText: 'Enter Email',
                              hintText: ' Enter Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(mobileFocusnode);
                            },
                            // //** EMail validation */

                            validator: (value) {
                              if (value!.isEmpty) {
                                return "This field can't be empty.";
                              } else if (!RegExp(r'\S+@\S+\.\S+')
                                  .hasMatch(value)) {
                                return "Please Enter a Valid Email";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          TextFormField(
                              focusNode: mobileFocusnode,
                              keyboardType: TextInputType.number,
                              controller: mobileController,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.call,
                                  ),
                                  prefixText: '+91 ',
                                  labelText: 'Mobile Number',
                                  hintText: 'Mobile Number',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  )),
                              onFieldSubmitted: (value) {
                                FocusScope.of(context)
                                    .requestFocus(buttonFocusnode);
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "This field can't be empty.";
                                } else if (value.length != 10) {
                                  return "Please Enter a Valid Mobile Number";
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 30.h,
                          ),
                          SizedBox(
                            height: 48.h,
                            width: 150.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  //elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.blue[200]),
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    'home', (route) => false);
                              },
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
