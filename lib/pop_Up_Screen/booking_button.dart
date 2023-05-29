import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:repair_duniya/Model_Screens/Subscription/subscriptionView.dart';
import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';
import '../pop_Up_Screen/Install_Screen.dart';
import '../Model_Screens/Subscription/subscriptionView.dart';

class bookingButton extends StatelessWidget {
  const bookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool IsSubscribed = false;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => MySub(),
                          // ));
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color.fromARGB(255, 63, 69, 145);
                              return Colors
                                  .blue; // Defer to the widget's default.
                            },
                          ),
                        ),
                        child: Text("Urgent Booking")),
                  ),
                ),
                // SizedBox(
                //   width: 15,
                // ),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: ElevatedButton(
                        onPressed: () {
                          showCustomModalBottomSheet(context);
                          // if (IsSubscribed) {
                          //   showCustomModalBottomSheet(context);
                          // }
                          // MySub();
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color.fromARGB(255, 63, 69, 145);
                              return Colors
                                  .blue; // Defer to the widget's default.
                            },
                          ),
                        ),
                        child: Text("Normal Booking")),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Container(
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Why urgent booking?',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
