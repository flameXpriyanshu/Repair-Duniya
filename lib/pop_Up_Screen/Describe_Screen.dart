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

  Widget Describe_sheet(BuildContext context) {
    final TextEditingController _Textcontroller = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: SlideTransition(
        position: _slideAnimation,
        child: Container(
          margin: EdgeInsets.only(top: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 6,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30, bottom: 30, left: 35),
                    margin: EdgeInsets.only(top: 0),
                    child: Center(
                      child: Text(
                        "Describe Repair",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 10),
                    child: Image.asset(
                      'assets/iconn.png',
                      height: 75,
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  minLines: 8,
                  maxLines: 200,
                  controller: _Textcontroller,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintMaxLines: 2,
                    hintText: 'My Air Conditioner is not working...',
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_outlined),
                  iconSize: 45,
                  onPressed: toggleContent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
