import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repair_duniya/pop_Up_Screen/booking_button.dart';
import 'package:video_player/video_player.dart';
import 'package:repair_duniya/pop_Up_Screen/Install_Screen.dart';
import 'screen_widgets.dart';

class MyTv extends StatefulWidget {
  const MyTv({super.key});

  @override
  State<MyTv> createState() => _MyTvState();
}

class _MyTvState extends State<MyTv> {
  @override
  Widget build(BuildContext context) {
    return Icons_widget(
        "screen_assets/tv2.jpg", "screen_assets/tv3.jpg", "Television");
  }
}
