//import 'package:ambedkar_student_housing/screens/wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/constant.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'onboard.dart';


class WelcomePageScreen extends StatefulWidget {
  const WelcomePageScreen({super.key});

  @override
  State<WelcomePageScreen> createState() => _WelcomePageScreenState();
}

class _WelcomePageScreenState extends State<WelcomePageScreen>
    with SingleTickerProviderStateMixin {
  //late AnimationController _controller;

  @override
  void initState() {
    super.initState();
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget> [
           Padding(
             padding: EdgeInsets.only(
                 bottom: 10, left: 110),
             child: Row(
               children: [
                 CustomButton(
                   onPressed: () {
                     Navigator.pushReplacement(
                         context,
                         CupertinoPageRoute(
                             builder: (context) => const OnBoard()));

                     // Navigator.pushReplacement(context,
                     //     MaterialPageRoute(builder: (context) => const OnBoard()));
                   },
                   buttonText : 'let’s start',
                   buttonColor: const Color.fromARGB(255, 31, 46, 195),
                   borderRadius: 10.0,
                   textColor: kwhite,
                 ),

               ],
             ),
           ),
           SizedBox(height: 20),
           Column(
             children: [
               CustomText(
                 text: 'Made with love',
                 fontFamily: 'Raleway',
                 fontSize: 10.0,
                 textColor: const Color.fromRGBO(37, 50, 177, 1),
                 fontWeight: FontWeight.w400,
               ),
               const SizedBox(height: 05),
               CustomText(
                 text: 'v.1.0',
                 fontFamily: 'Montserrat',
                 fontSize: 10.0,
                 fontWeight: FontWeight.w700,
                 textColor: const Color.fromRGBO(37, 50, 177, 1),
               ),
             ],
           ),
           const SizedBox(height: 20),
        ],
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
  }
}