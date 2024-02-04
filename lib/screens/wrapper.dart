import 'package:ambedkar_student_housing/model/userFromDb.dart';
import 'package:ambedkar_student_housing/screens/email_auth/login_screen.dart';
import 'package:ambedkar_student_housing/screens/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserFromDb?>(context);

    if (user == null) {
      return const LoginScreen();
    } else {
      return HomeScreen();
    }
  }
}
