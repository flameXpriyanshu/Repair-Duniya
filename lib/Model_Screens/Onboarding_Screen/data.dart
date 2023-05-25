import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      imageUrl: "animations/img-1.json",
      title: "Get Technician in 1 Hour",
      body: "Book now and get professionals at your doorstep",
      titleGradient: [Colors.grey, Colors.grey]),
  PageModel(
      imageUrl: "animations/img-2.json",
      title: "Track Your Booking",
      body: "Free booking, free cancellation, 30 Days service guarantee",
      titleGradient: [Colors.grey, Colors.grey]),
  PageModel(
      imageUrl: "animations/img-3.json",
      title: "Control Your Appliance",
      body: "Turn ON/OFF your appliances through app",
      titleGradient: [Colors.grey, Colors.grey]),
];

class PageModel {
  String imageUrl;
  String title;
  String body;
  List<Color> titleGradient = [];
  PageModel(
      {required this.imageUrl,
      required this.title,
      required this.body,
      required this.titleGradient});
}
