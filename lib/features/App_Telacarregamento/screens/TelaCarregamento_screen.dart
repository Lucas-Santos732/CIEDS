import 'package:flutter/material.dart';

void main() {
  runApp(const Telacarregamento());
}

@override
class Telacarregamento extends StatelessWidget {
  const Telacarregamento({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [const Fundo(), Center(child: const LogoCieds())],
        ),
      ),
    );
  }
}

class Fundo extends StatelessWidget {
  const Fundo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xff009fe3), Color(0xff00587d)],
          stops: [0.4, 1.0],
        ),
      ),
    );
  }
}

class LogoCieds extends StatelessWidget {
  const LogoCieds({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image(
        image: AssetImage('lib/core/assets/images/Cieds.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}
