import 'package:ambedkar_student_housing/screens/auth/login_screen.dart';
import 'package:ambedkar_student_housing/screens/auth/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../config/constant.dart';
import '../../model/onboard_model.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'onboard.dart';


class LoginOptionScreen extends StatefulWidget {
  const LoginOptionScreen({super.key});

  @override
  State<LoginOptionScreen> createState() => _LoginOptionScreenState();
}

class _LoginOptionScreenState extends State<LoginOptionScreen>
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
    return Scaffold(
      body: Column(
        children: [
          _imageGallery(),
          _textContent(),
          _continueWithEmail(),
          const SizedBox(height: 30),
          _divider(),
          _socialMedialOption(),
          _registerText(),
        ],
      ),
    );
  }

  Widget _imageGallery(){
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 13, right: 13),
      child: Container(
          height: 430,
          child: GridView.builder(
              itemCount: imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

              ), itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.cover
                  )
              ),
            );
          })
      ),
    );
  }

  Widget _textContent(){
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 25, right: 13),
      child: Row(
        children: [
          CustomText(text: 'Ready to',
            fontFamily: 'Lato',
            fontSize: 25,
            textColor: const Color.fromRGBO(
                37, 43, 92, 1),
            fontWeight: FontWeight.w500,
          ),
          CustomText(text: ' dive in?',
            fontFamily: 'Lato',
            fontSize: 25,
            textColor: const Color.fromRGBO(
                31, 46, 195, 1),
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }

  Widget _continueWithEmail(){
    return Padding(
      padding: EdgeInsets.only(
          top: 40),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const LoginScreen()));

              },
              buttonText : 'Continue with Email',
              buttonColor: const Color.fromARGB(255, 31, 46, 195),
              borderRadius: 10.0,
              textColor: kwhite,
              icon: const Icon(Icons.email, color: Color.fromRGBO(255, 255, 255, 1))
          ),
        ],
      ),
    );
  }

  Widget _divider(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            indent: 20.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        CustomText(text: "OR",
          fontFamily: 'Raleway',
          fontSize: 10,
          textColor: const Color.fromRGBO(
              161, 165, 193, 1),
          textAlign: TextAlign.left,
          fontWeight: FontWeight.w600,

        ),
        const Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 20.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _socialMedialOption(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 158.5,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200]
            ),
            child: Image.asset('assets/images/google.png',height: 25.0),
          ),
          SizedBox(width: 25),
          Container(
            width: 158.5,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200]
            ),
            child: Image.asset('assets/images/facebook.png',height: 25.0),
          ),
        ],
      ),
    );
  }

  Widget _registerText(){
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: 'Don’t have an account?',
            fontFamily: 'Lato',
            fontSize: 12,
            textColor: const Color.fromRGBO(
                83, 88, 122, 1),
            fontWeight: FontWeight.w400,
          ),
          InkWell(
            onTap: () async {
              Navigator.pushReplacement(context,
                  CupertinoPageRoute(builder: (context) => SignUpScreen()));
            },
            child: const Text(
              "Register",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Lato',
                  color: Color.fromRGBO(
                      31, 76, 107, 1),
                  fontWeight: FontWeight.w700
            ),
          )
          ),
        ],
      ),
    );
  }
}