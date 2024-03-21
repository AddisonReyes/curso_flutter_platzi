import 'package:flutter/material.dart';

class ChallengeTwo extends StatelessWidget {
  const ChallengeTwo({super.key});

  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          _imagenFondo(),
          _textoCentral(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => (),
      ),
    );
  }

  Widget _imagenFondo() {
    return const Image(
      image: AssetImage("assets/images/328895.jpg"),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _textoCentral() {
    return Center(
      child: Container(
        height: 100,
        color: const Color.fromRGBO(0, 0, 0, 0.6),
        child: const Center(
          child: Text(
            'Naugthy', 
            style: TextStyle(
              fontSize: 40,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}