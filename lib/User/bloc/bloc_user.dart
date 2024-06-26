import 'package:curso_flutter_platzi/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserBloc implements Bloc {

  // ignore: non_constant_identifier_names
  final _auth_repository = AuthRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  Future<User?> signIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {
    
  }
}