import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<User?> signInFirebase() => _firebaseAuthAPI.signIn();
}