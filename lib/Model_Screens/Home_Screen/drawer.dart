import 'package:flutter/material.dart';
import 'package:repair_duniya/Model_Screens/Help_Support/support.dart';
import 'package:repair_duniya/Model_Screens/Home_Screen/home.dart';
import 'package:repair_duniya/Model_Screens/Subscription/subscriptionView.dart';

// function to trigger app build
class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          // Positioned(
          //   height: 250,
          //   bottom: 0,
          //   right: 20,
          //   child: Opacity(
          //     opacity: 1,
          //     child: Image.network(
          //         'https://o.remove.bg/downloads/3178b85c-474e-4d8d-8180-2cf5ca0f78c6/painter-construction-worker-cartoon-character_1308-109218-removebg-preview.png'),
          //   ),
          // ),
          ListView(
            padding: EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //     // colors: [Colors.blue, Colors.purple],

                    //     begin: Alignment.centerLeft,
                    //     end: Alignment.centerRight),
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))
                    // color: Color.fromARGB(255, 15, 30, 41),
                    ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: null),
                  accountName: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Ajay Yadav",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  accountEmail: Text("ay3404869@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(' Home '),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.hexagon),
                    title: const Text(' All Services '),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ExpansionTile(
                    leading: const Icon(Icons.schedule,color: Colors.grey),
                    title: Text(' My Booking ',style: TextStyle(color: Colors.black),),
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.arrow_right),
                        title: Text('Ongoing Booking'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.arrow_right),
                        title: Text('Recent Booking'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],

                  ),
                  ListTile(
                    leading: const Icon(Icons.subscriptions),
                    title: const Text(' Subscription '),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubscriptionView()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.shopping_basket_outlined),
                    title: const Text(' Buy old & New appliances '),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.message_outlined),
                    title: const Text(' Help & Support'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Support()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('LogOut'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ) //DrawerHeader
        ],
      ),
    );
  }
}
