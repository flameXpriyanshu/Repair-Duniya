import 'package:flutter/material.dart';
import 'package:repair_duniya/pop_Up_Screen/Date_Screen.dart';

class modalBottomSheet extends StatefulWidget {
  const modalBottomSheet({super.key});

  @override
  State<modalBottomSheet> createState() => _modalBottomSheetState();
}

class _modalBottomSheetState extends State<modalBottomSheet>
    with SingleTickerProviderStateMixin {
  bool showDateSheet = true;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleContent() {
    setState(() {
      showDateSheet = !showDateSheet;
    });
  }

  Widget Describe_sheet(context) {
    final TextEditingController _Textcontroller = TextEditingController();
    // showModalBottomSheet(
    //     context: context,
    //     builder: (context) => SlideTransition(
    //           position: Tween<Offset>(
    //             begin: Offset(1, 0),
    //             end: Offset.zero,
    //           ).animate(CurvedAnimation(
    //             parent: ModalRoute.of(context)!.animation!,
    //             curve: Curves.easeInOut,
    //           )),
    //           child:
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45),
            child: Center(
                child: Text(
              "Describe Repair",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              minLines: 8,
              maxLines: 200,
              controller: _Textcontroller,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintMaxLines: 2,
                hintText: 'My Air Conditioner is not working',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 22),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.black26),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: Colors.black26),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    icon: Image.asset('assets/right-arrow.png'),
                    color: Colors.black,
                    onPressed: toggleContent)),
          ),
        ]),
      ),
    );
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        if (showDateSheet) Describe_sheet(context),
        if (!showDateSheet) DateBottomSheet()
      ]),
    );
  }
}



// void Describe_sheet(context) {
//   final TextEditingController _Textcontroller = TextEditingController();
//   showModalBottomSheet(
//       context: context,
//       builder: (context) => Container(
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10))),
//             child: Column(children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 45),
//                 child: Center(
//                     child: Text(
//                   "Describe Repair",
//                   style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
//                 )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: TextFormField(
//                   minLines: 8,
//                   maxLines: 200,
//                   controller: _Textcontroller,
//                   keyboardType: TextInputType.multiline,
//                   decoration: InputDecoration(
//                     hintMaxLines: 2,
//                     hintText: 'My Air Conditioner is not working',
//                     hintStyle:
//                         TextStyle(color: Colors.grey.shade400, fontSize: 22),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(width: 1, color: Colors.black26),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10)),
//                       borderSide: BorderSide(width: 1, color: Colors.black26),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 30, left: 10),
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: IconButton(
//                       icon: Image.asset('assets/right-arrow.png'),
//                       color: Colors.black,
//                       onPressed: () {
//                         Date_sheet(context);
//                       }),
//                 ),
//               )
//             ]),
//           ));
// }
