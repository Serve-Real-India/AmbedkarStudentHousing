import 'package:ambedkar_student_housing/firebase_options.dart';
import 'package:ambedkar_student_housing/screens/email_auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
  // runApp(const MaterialApp(
  //   home: Home(),
  // ));
}

class Home extends StatelessWidget {
  //const Home({super.key});
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      //home: (FirebaseAuth.instance.currentUser != null) ? HomeScreen() : LoginScreen(),
    );
  }
}
