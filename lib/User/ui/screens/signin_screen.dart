import 'package:curso_flutter_platzi/User/bloc/bloc_user.dart';
import 'package:curso_flutter_platzi/Widgets/button_green.dart';
import 'package:curso_flutter_platzi/Widgets/gradient_back.dart';
import 'package:curso_flutter_platzi/platzi_trips_cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart'; 
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {

  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSesion();
  }

  Widget _handleCurrentSesion() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        }
        else {
          return const PlatziTripsCupertino();
        }
      }
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Welcome \n This is your Travel App",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  // ignore: avoid_print
                  userBloc.signIn().then((User? user) => print("Usuario es ${user?.displayName}"));
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}