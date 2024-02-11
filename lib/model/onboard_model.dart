import 'package:flutter/material.dart';

class OnboardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;
  String buttonText;

  OnboardModel(
      {required this.img,
      required this.text,
      required this.desc,
      required this.bg,
      required this.button,
      required this.buttonText});
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
      img: 'assets/images/img-1.png',
      text: "A place students can",
      desc:
          "Ambedkar Student Housing platform is being built for Bahujan Community members as a way to offer student housing and related services to incoming Bahujan Community Students",
      bg: Colors.white,
      button: const Color(0xFF4756DF),
      buttonText: 'Next'),
  OnboardModel(
      img: 'assets/images/img-2.png',
      text:
          "Please acknowledge that you identify as being from one of the oppressed caste communities broadly identified as SC, ST, OBC, or are from one of these oppressed caste communities but you or your ancestors have since converted and are part of other religious minorities.",
      desc: "Please acknowledge and proceed to the next step",
      bg: const Color(0xFF4756DF),
      button: Colors.white,
      buttonText: 'I Acknowledge'),
];

List<String> imageList = [
  'assets/images/img-4.png',
  'assets/images/img-3.png',
  'assets/images/img-5.png',
  'assets/images/img-6.png'
];
