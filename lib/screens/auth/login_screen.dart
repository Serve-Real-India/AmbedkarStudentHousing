import 'package:ambedkar_student_housing/screens/onboard/login_option_screen.dart';
import 'package:ambedkar_student_housing/services/auth.dart';
import 'package:ambedkar_student_housing/widgets/custom_button.dart';
import 'package:ambedkar_student_housing/widgets/custom_divider.dart';
import 'package:ambedkar_student_housing/widgets/custom_text.dart';
import 'package:ambedkar_student_housing/widgets/custom_text_form_field.dart';
import 'package:ambedkar_student_housing/widgets/header_image_back_button.dart';
import 'package:ambedkar_student_housing/widgets/register_text.dart';
import 'package:ambedkar_student_housing/widgets/social_media_login_options.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  final AuthService _authService = AuthService();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  String? validateEmail(String? value) {
    return value!.isEmpty || !EmailValidator.validate(value)
        ? 'Enter a valid email address'
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeaderImageBackButton(),
        Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCustomText(),
                  const SizedBox(height: 30),
                  _buildForm(),
                  const SizedBox(height: 20),
                  const CustomDivider(text: "OR"),
                  const SizedBox(height: 10),
                  const SocialMediaLoginOption(),
                  const RegisterText(),
                ],
              ),
            )),
      ],
    )));
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(children: [
        _buildEmailField(),
        const SizedBox(height: 20),
        _buildPasswordField(),
        const SizedBox(height: 0),
        _buildPasswordVisibilityToggle(),
        const SizedBox(height: 20),
        _buildSignInButton(),
      ]),
    );
  }

  Widget _buildEmailField() {
    return CustomTextFromField(
      hintText: 'Email',
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
        setState(() => email = value);
      },
    );
  }

  Widget _buildSignInButton() {
    return CustomButton(
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          setState(() {
            error = '';
          });
          try {
            await widget._authService
                .signInWithEmailAndPassword(email, password);
          } catch (e) {
            if (e is FirebaseException) {
              setState(() {
                error = e.message!;
              });
            } else {
              setState(() {
                error = e.toString();
              });
            }
          }
        }
      },
      buttonText: 'LogIn',
      buttonColor: const Color(0xFF1F2EC3),
      textColor: Colors.white,
      borderRadius: 10,
    );
  }

  Widget _buildPasswordField() {
    return CustomTextFromField(
      hintText: 'Password',
      prefixIcon: Icons.lock_outline,
      obscureText: _obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
      onChanged: (value) {
        setState(() => password = value);
      },
    );
  }

  Widget _buildCustomText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Let\'s Sign In',
          fontFamily: 'Lato',
          fontSize: 25,
          fontWeight: FontWeight.w500,
          textColor: const Color(0xFF252B5C),
        ),
        const SizedBox(height: 20),
        const Text("Lorem ispum dolor sit amet, consect")
      ],
    );
  }

  Widget _buildPasswordVisibilityToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Forgot Password?',
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

  Widget _buildHeaderImageBackButton() {
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
  }
}
