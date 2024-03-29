import 'package:ambedkar_student_housing/screens/onboard/login_option_screen.dart';
import 'package:ambedkar_student_housing/services/auth.dart';
import 'package:ambedkar_student_housing/widgets/custom_button.dart';
import 'package:ambedkar_student_housing/widgets/custom_divider.dart';
import 'package:ambedkar_student_housing/widgets/custom_text_form_field.dart';
import 'package:ambedkar_student_housing/widgets/header_image_back_button.dart';
import 'package:ambedkar_student_housing/widgets/social_media_login_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullName = '';
  bool _obscureText = true;
  String error = '';
  String emailSent = '';
  late Size size ;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
   return SafeArea(
    child: Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            color: Colors.white,
          ),
        //padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBackButton(),
              const SizedBox(height: 30),
              Padding(padding: const EdgeInsets.only(left: 24,right: 24),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              _buildTitle(),
              const SizedBox(height: 20),
              _buildSubtitle(),
              const SizedBox(height: 30),
              _buildForm(),
             
                ],
              ),
              )
              
              //  Padding(
              //    padding: const EdgeInsets.only(left: 24),
              //    child: _buildTitle(),
              //  ),
              //   const SizedBox(height: 20),
              //   Padding(
              //     padding: const EdgeInsets.only(left: 24),
              //     child: _buildSubtitle(),
              //   ),
              //   const SizedBox(height: 40),
              //   Padding(
              //     padding: const EdgeInsets.only(left: 24,right: 24),
              //     child: _buildForm(),
              //   ),
            ]
            ),
        ),
      ),
    )
    );
  }

  Widget _buildBackButton() {
     return HeaderImageBackButton(
      imagePath: 'assets/images/city.png',
      icon: const Icon(Icons.chevron_left, color: Colors.black),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginOptionScreen()),
        );
      },
      buttonBorderColor: const Color.fromARGB(255, 164, 117, 208),
    );
    // return CustomBackButton(
    //   onPressed: () {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => const LoginOptionScreen()),
    //     );
    //   },
    // );
  }

  Widget _buildTitle() {
    return const Text(
      "Create Account",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildSubtitle() {
    return const Text(
      "Lorem ipsum dolor sit ame",
      style: TextStyle(
        fontSize: 12,
        fontFamily: 'Lato',
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildNameField(),
          const SizedBox(height: 10),
          _buildEmailField(),
          const SizedBox(height: 10),
          _buildPasswordField(),
          const SizedBox(height: 10),
          _buildPasswordVisibilityToggle(),
          const SizedBox(height: 20),
          const CustomDivider(text: "OR"),
          const SizedBox(height: 20),
           const SocialMediaLoginOption(),
           const SizedBox(height: 20),
          _buildRegisterButton(),
          const SizedBox(height: 20),
          _buildErrorText(),
          _buildEmailSentText(),
        ],
      ),
    );
  }

  Widget _buildNameField() {
    return CustomTextFromField(
      hintText: 'Full Name',
      prefixIcon: Icons.person_2_outlined,
      obscureText: false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your full name';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          fullName = value;
        });
      },
    );
  }

  Widget _buildEmailField() {
    return CustomTextFromField(
      hintText: 'Email Address',
      prefixIcon: Icons.email_outlined,
      obscureText: false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email address';
        }
        if (!value.contains('@')) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
    );
  }

  Widget _buildPasswordField() {
    return CustomTextFromField(
      hintText: 'Password',
      prefixIcon: Icons.lock_outline,
      obscureText: _obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
    );
  }

  Widget _buildPasswordVisibilityToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Terms and Conditions',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF234F68),
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: const Text(
            'Show password',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF234F68),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterButton() {
    return SizedBox(
      width: 278,
      child: CustomButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            setState(() {
              error = '';
              emailSent = '';
            });
            try {
              dynamic result = await widget._auth
                  .signUpWithEmailAndPassword(email, password, fullName);
              if (result == null) {
                setState(() {
                  emailSent = 'A verification email has been sent to $email';
                });
              }
            } catch (ex) {
              if (ex is FirebaseException) {
                setState(() {
                  error = ex.message!;
                });
              } else {
                setState(() {
                  error = ex.toString();
                });
              }
            }
          }
        },
        buttonText: 'Register',
        buttonColor: const Color(0xFF1F2EC3),
        textColor: Colors.white,
      ),
    );
  }

  Widget _buildErrorText() {
    return Text(
      error,
      style: const TextStyle(color: Colors.red, fontSize: 14),
    );
  }

  Widget _buildEmailSentText() {
    return Text(
      emailSent,
      style: const TextStyle(color: Colors.green, fontSize: 14),
    );
  }
}
