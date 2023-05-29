import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repair_duniya/pop_Up_Screen/booking_button.dart';
import 'package:video_player/video_player.dart';
import 'package:repair_duniya/pop_Up_Screen/Install_Screen.dart';
import 'screen_widgets.dart';

class Mybike extends StatefulWidget {
  const Mybike({super.key});

  @override
  State<Mybike> createState() => _MybikeState();
}

class _MybikeState extends State<Mybike> {
  @override
  Widget build(BuildContext context) {
    return Icons_widget(
        "screen_assets/oven1.jpeg", "screen_assets/oven2.jpg", "Motorcycle");
  }
}
