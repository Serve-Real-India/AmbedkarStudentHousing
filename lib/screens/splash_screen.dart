import 'dart:async';

import 'package:ambedkar_student_housing/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  //late AnimationController _controller;

  @override
  void initState() {
    super.initState();
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

   Future.delayed(const Duration(seconds: 5),() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const Wrapper(),
      
      ));
   });
  //  Timer(const Duration(seconds: 3), () { 
  //   Navigator.pushReplacement(context, 
  //     MaterialPageRoute(builder: (context)=> const Wrapper())
  //   );
  //  });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
     return Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/splash/background.png"),
      fit: BoxFit.cover,
    ),
  ),
  child: Scaffold(
    backgroundColor: Colors.transparent,
    body: Container(),
),);
  }
}