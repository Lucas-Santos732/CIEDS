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
        appBar: const BarraTelaPrincipal(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DivideTela(),
              const TextoHorario(),
              const SizedBox(height: 25),
              EventCard(
                TemaAula: "Administração",
                sala: "1",
                instrutor: "João Guilherme",
                local:
                    "R. José Bonifácio, 250 - 6º andar - Centro Histórico de São Paulo, São Paulo - SP, 01003-001",
                data: "25/03/2025",
                hora: "08:00",
              ),
              SizedBox(height: 25),
              EventCard(
                TemaAula: "TI",
                sala: "2",
                instrutor: "Anne",
                local:
                    "R. Conselheiro Saraíva, 28 - 8º andar - Centro, Rio de Janeiro - RJ, 20091-030",
                data: "27/03/2025",
                hora: "10:00",
              ),
              SizedBox(height: 25),
              EventCard(
                TemaAula: "Logística",
                sala: "3",
                instrutor: "Lucas",
                local:
                    "R. Conselheiro Saraíva, 28 - 8º andar - Centro, Rio de Janeiro - RJ, 20091-030",
                data: "27/03/2025",
                hora: "08:00",
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Business'),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('School'),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
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
      automaticallyImplyLeading: false, // Remove o ícone de menu padrão
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
        Builder(
          builder:
              (context) => SizedBox(
                width: 75,
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                    color: Color(0xffFCAF17),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  alignment: Alignment.center,
                ),
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
  final String TemaAula;
  final String sala;
  final String instrutor;
  final String local;
  final String data;
  final String hora;

  const EventCard({
    Key? key,
    required this.TemaAula,
    required this.sala,
    required this.instrutor,
    required this.local,
    required this.data,
    required this.hora,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370,
        decoration: BoxDecoration(
          color: Color(0xFFFFB433),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header com TI e Sala 1
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '        ${this.TemaAula}         ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    'Sala ${this.sala}         ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            // Conteúdo do meio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instrutor:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(this.instrutor),
                  SizedBox(height: 8),
                  Text(
                    'Local:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(this.local),
                  SizedBox(height: 10),
                ],
              ),
            ),
            // Rodapé preto com data e hora
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Data: ${this.data}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'Inicio: ${this.hora}   ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
