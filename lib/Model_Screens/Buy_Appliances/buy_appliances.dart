import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_duniya/Model_Screens/Buy_Appliances/product_card.dart';

class Buy_appliances extends StatelessWidget {
  Buy_appliances({super.key});
  List CatList = ["All", "Best Selling", "Offers"];

  List imgList = [
    "Geyser_Buy",
    "geyser_havells(3L)",
    "Washing_Buy",
    "Ac_Buy",
    "Geyser_Buy"
  ];
  List titleList = [
    "Geyser",
    "Geyser",
    "Washing Machine",
    "Air Conditioner",
    "Geyser"
  ];
  List subList = [
    "Havells(3L)",
    "Bajaj Splendora(3L)",
    "LG 7Kg 5star",
    "Voltas 1.5 Ton 3star AC",
    "Havells(3L)"
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Find your appliances"),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/Offer-1.jpg",
                  width: MediaQuery.of(context).size.width / 1.2,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    for (int i = 0; i < CatList.length; i++)
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 18),
                        decoration: BoxDecoration(
                            color: CatList[i] == "All"
                                ? const Color(0xFFFD725A)
                                : const Color.fromARGB(255, 224, 225, 227),
                            borderRadius: BorderRadius.circular(18)),
                        child: Text(
                          CatList[i],
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: CatList[i] == "All"
                                ? const Color.fromARGB(255, 244, 241, 241)
                                : Colors.grey.shade500,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:
                      (MediaQuery.of(context).size.width - 30 - 15) / (2 * 290),
                  mainAxisSpacing: 35,
                  crossAxisSpacing: 5),
              itemCount: imgList.length,
              itemBuilder: (_, i) {
                return product_card(imgList[i], titleList[i], subList[i]);
                // if (i % 2 == 0) {
                //   return product_card(imgList[i]);
                // }
                // return OverflowBox(
                //   maxHeight: 290 + 70,
                //   child: Container(
                //     margin: EdgeInsets.only(top: 70),
                //     child: product_card(imgList[i]),
                //   ),
                // );
              },
            )
          ],
        ),
      )),
    );
  }
}
