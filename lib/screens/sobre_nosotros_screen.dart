import 'package:flutter/material.dart';

class SobreNosotrosScreen extends StatelessWidget {
  final options = const [
    'Que es DUO?',
    'Privacy',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 11, 53),
      body: ListView(
        children: [
          SizedBox(height: 60),
          Text(
            'Sobre Nosotros',
            style: TextStyle(fontSize: 50, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60),
          ListTile(
            leading: const Icon(
              Icons.person_outline_outlined,
              size: 50,
              color: Colors.white,
            ),
            title: Text('Que es DUO?',
                style: TextStyle(fontSize: 50, color: Colors.white)),
            subtitle: Text(
              'DUO es un aplicacion para la comunidad gamer donde podras encontrar mas personas con las cuales pueden jugar en el juego donde hagan match.',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          SizedBox(height: 70),
          ListTile(
            leading: const Icon(Icons.shield_outlined,
                size: 50, color: Colors.white),
            title: Text('Privacidad',
                style: TextStyle(fontSize: 50, color: Colors.white)),
            subtitle: Text(
              'La aplicación DUO protegerá en todo momento la privacidad de los Usuarios, de acuerdo con la política de privacidad y los avisos sobre privacidad de la Aplicación. Puede modificar las preferencias sobre privacidad en el apartado de Ajustes.',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
