import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:repair_duniya/Model_Screens/Subscription/subscriptionView.dart';
import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';
import '../pop_Up_Screen/Install_Screen.dart';

class bookingButton extends StatelessWidget {
  const bookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool IsSubscribed = true;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 0, left: 7),
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 177.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: ElevatedButton(
                      onPressed: () {
                        DateBottomSheet();
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
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
              SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 50,
                width: 177.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: ElevatedButton(
                      onPressed: () {
                        if (IsSubscribed) {
                          showCustomModalBottomSheet(context);
                        }
                        SubscriptionView();
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
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
            Padding(padding: EdgeInsets.only(left: 10)),
            TextButton(
                onPressed: () {
                  SubscriptionView();
                },
                child: Text(
                  'Why urgent booking?',
                  style: TextStyle(
                      color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ],
    );
  }
}
