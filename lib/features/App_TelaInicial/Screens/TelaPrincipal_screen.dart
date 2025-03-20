import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const BarraTelaPrincipal(), // AppBar personalizado
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DivideTela(),
              const TextoHorario(),
              const SizedBox(height: 25),
              EventCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BarraTelaPrincipal extends StatelessWidget
    implements PreferredSizeWidget {
  const BarraTelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 65, // Altura do AppBar
      title: const SizedBox(
        width: 100,
        height: 100,
        child: Image(
          alignment: Alignment.center,
          image: AssetImage("lib/core/assets/images/ColetivoAprendiz.png"),
          fit: BoxFit.contain,
        ),
      ),
      actions: <Widget>[
        SizedBox(
          width: 75,
          child: IconButton(
            icon: const Icon(Icons.menu, size: 35, color: Color(0xffFCAF17)),
            onPressed: () {},
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65); // Define a altura preferida do AppBar
}

class DivideTela extends StatelessWidget {
  const DivideTela({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(height: 5, thickness: 3, indent: 15, endIndent: 15);
  }
}

class TextoHorario extends StatelessWidget {
  const TextoHorario({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 15),
      width: double.infinity,
      child: const Text(
        'Grade de Horário:',
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'TI',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Instrutor:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text('Lucas de Souza dos Santos', style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),
            Text(
              'Local:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Coletivo Aprendiz São Paulo - Rua José Bonifácio, 250 - 6º andar - Centro, São Paulo - SP',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text('Data: 15/03/2025', style: TextStyle(fontSize: 16.0)),
            Text('Começa: 08:00', style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
