import 'package:ambedkar_student_housing/firebase_options.dart';
import 'package:ambedkar_student_housing/model/userFromDb.dart';
import 'package:ambedkar_student_housing/screens/onboard/onboard.dart';
import 'package:ambedkar_student_housing/screens/splash_screen.dart';
import 'package:ambedkar_student_housing/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //await Future.delayed(const Duration(seconds: 10));
  //FlutterNativeSplash.remove();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      initialData: UserFromDb(uid: "0"),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
