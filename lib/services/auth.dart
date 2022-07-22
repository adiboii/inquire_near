import 'package:firebase_auth/firebase_auth.dart';
import 'package:inquire_near/models/user.dart' as UserModel;
import 'package:inquire_near/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Create user object based on FirebaseUser
  UserModel.User? _userFromFirebaseUser(User user) {
    return user != null ? UserModel.User(uid: user.uid) : null;
  }

  // Sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // auth change user stream
  Stream<UserModel.User> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!)!);
  }

  // Sign In with Email And Password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register with Email And Password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;

      await DatabaseService(uid: user.uid)
          .updateUserData('Cymmer John Maranga');

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign Out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
