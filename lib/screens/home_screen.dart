import 'package:ambedkar_student_housing/services/auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final AuthService _auth = AuthService();
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Ambedkar Student House'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () async {
              await widget._auth.signOut();
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}
