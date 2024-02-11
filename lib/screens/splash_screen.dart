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

   Future.delayed(const Duration(seconds: 3),() {
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
            image: AssetImage("assets/images/img-3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(33, 56, 138, 0.8),
                  Color.fromRGBO(33, 44, 138, 0.3),
                  //Colors.yellow.withOpacity(0.6)
                ],
                stops: [0.0,0.6],
                begin: Alignment.topLeft
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -0.4),
                colors: [
                  Color.fromRGBO(255, 255, 255, 0),
                  Color.fromRGBO(255, 232, 172, 1)
                ],
                radius: 1.3,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  scale: 5.2,
                  image: AssetImage("assets/images/logo-final.png"),
                  //fit: BoxFit.fitWidth,
                ),
              ),

            ),
          ),
          //       child: Align(
          //         alignment: Alignment.centerLeft,
          //         child: Container(
          //           width: 300,
          //           margin: EdgeInsets.only(top: 200.0),
          //           padding: EdgeInsets.all(16.0),
          //           decoration: BoxDecoration(
          //             gradient: LinearGradient(
          // colors: [Colors.purple, Colors.red.withOpacity(0)]
          //             )
          //           ),
          //           child: Text("Shop"),
          //         ),
          //       )

        )
    );
//      return Container(
//   decoration: const BoxDecoration(
//     image: DecorationImage(
//       image: AssetImage("assets/images/splash/background.png"),
//       fit: BoxFit.cover,
//     ),
//   ),
//   child: Scaffold(
//     backgroundColor: Colors.transparent,
//     body: Container(),
// ),);
  }
}