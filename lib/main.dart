import 'package:ambedkar_student_housing/firebase_options.dart';
import 'package:ambedkar_student_housing/model/user_from_db.dart';
import 'package:ambedkar_student_housing/screens/onboard/login_option_screen.dart';
import 'package:ambedkar_student_housing/screens/wrapper.dart';
import 'package:ambedkar_student_housing/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserFromDb>.value(
      value: AuthService().user,
      initialData: UserFromDb(uid: '', isEmailVerified: false),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<UserFromDb>(builder: (context, user, child) {
          if (user.uid == '' && user.isEmailVerified == true) {
            return const LoginOptionScreen();
          } else {
            return const Wrapper();
          }
        }),
      ),
    );
  }
}
