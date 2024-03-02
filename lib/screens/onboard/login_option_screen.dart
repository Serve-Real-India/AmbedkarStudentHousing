import 'package:ambedkar_student_housing/screens/auth/login_screen.dart';
import 'package:ambedkar_student_housing/screens/auth/signup_screen.dart';
import 'package:ambedkar_student_housing/widgets/custom_divider.dart';
import 'package:ambedkar_student_housing/widgets/register_text.dart';
import 'package:ambedkar_student_housing/widgets/social_media_login_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../config/constant.dart';
import '../../model/onboard_model.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
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
          const CustomDivider(text: 'OR'),
          const SizedBox(height: 10),
          const SocialMediaLoginOption(),
          const RegisterText(),
        ],
      ),
    );
  }

  Widget _imageGallery() {
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 13, right: 13),
      child: SizedBox(
          height: 430,
          child: GridView.builder(
              itemCount: imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.cover)),
                );
              })),
    );
  }

  Widget _textContent() {
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 25, right: 13),
      child: Row(
        children: [
          CustomText(
            text: 'Ready to',
            fontFamily: 'Lato',
            fontSize: 25,
            textColor: const Color.fromRGBO(37, 43, 92, 1),
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: ' dive in?',
            fontFamily: 'Lato',
            fontSize: 25,
            textColor: const Color.fromRGBO(31, 46, 195, 1),
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }

  Widget _continueWithEmail() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => LoginScreen()));
              },
              buttonText: 'Continue with Email',
              buttonColor: const Color.fromARGB(255, 31, 46, 195),
              borderRadius: 10.0,
              textColor: kwhite,
              icon: const Icon(Icons.email,
                  color: Color.fromRGBO(255, 255, 255, 1))),
        ],
      ),
    );
  }
}
