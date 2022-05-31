import 'package:duo/widgets/appbar_custom.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppBarCustom(),
        Stack(
          children: [
            _Foto(),
          ],
        ),
        _Opciones(),
      ],
    ));
  }
}

class _Foto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new NetworkImage(
              "https://i.imgur.com/HPxeBXZ.jpg",
            ),
            fit: BoxFit.cover),
      ),
      // child: Center(
      //   child: Text(
      //     'photo_user',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(fontSize: 50),
      //   ),
      // ),
    );
  }
}

class _Opciones extends StatelessWidget {
  const _Opciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height * 0.50,
        child: Column(
          children: [
            Text(
              'Cristian Tovar',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 50),
            _MenuPerfil()
          ],
        ));
  }
}

class _MenuPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 80,
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              IconButton(
                icon: Icon(Icons.people_outline),
                iconSize: 60,
                color: Color.fromARGB(255, 38, 11, 53),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'duo');
                },
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                icon: Icon(Icons.games_outlined),
                iconSize: 60,
                color: Color.fromARGB(251, 187, 134, 171),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'mygame');
                },
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                icon: Icon(Icons.settings_suggest_rounded),
                iconSize: 60,
                color: Color.fromARGB(255, 38, 11, 53),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'ajustes');
                },
              ),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 45,
            ),
            Text('MIS DUO'),
            SizedBox(
              width: 75,
            ),
            Text('Juegos'),
            SizedBox(
              width: 75,
            ),
            Text('Ajustes')
          ],
        )
      ],
    );
  }
}
