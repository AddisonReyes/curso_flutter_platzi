import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> signIn() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication? gSA = await googleSignInAccount?.authentication;

    UserCredential userCredential = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: gSA?.idToken, accessToken: gSA?.accessToken));

    return userCredential.user;
  }
} 