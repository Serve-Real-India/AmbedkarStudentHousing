import 'package:ambedkar_student_housing/model/userFromDb.dart';
import 'package:ambedkar_student_housing/screens/auth/login_screen.dart';
import 'package:ambedkar_student_housing/screens/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'onboard/onboard.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserFromDb?>(context);

    if (user == null) {
      //return const LoginScreen();
      return const OnBoard();
    } else {
      return HomeScreen();
    }
  }
}
