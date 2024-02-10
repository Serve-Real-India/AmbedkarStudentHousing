import 'package:ambedkar_student_housing/model/user_from_db.dart';
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

  Future signUpWithEmailAndPassword(
      String email, String password, String fullName) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      if (user != null) {
        user.updateDisplayName(fullName);
        if (user.emailVerified == false) {
          await user.sendEmailVerification();
          return null;
        }
      }
      return _userFromFirebase(user!);
    } catch (ex) {
      rethrow;
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
