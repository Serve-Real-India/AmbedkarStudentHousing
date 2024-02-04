import 'package:ambedkar_student_housing/model/userFromDb.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserFromDb _userFromFirebase(User user) {
    return UserFromDb(uid: user.uid);
  }

  Stream<UserFromDb?> get user {
    return _auth
        .authStateChanges()
        .map((user) => user != null ? _userFromFirebase(user) : null);
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = userCredential.user;
      return _userFromFirebase(user!);
    } catch (ex) {
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (ex) {
      return null;
    }
  }
}
