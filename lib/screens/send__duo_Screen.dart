import 'package:flutter/material.dart';

class SendDuoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _Fondo(),
      ],
    ));
  }
}

class _Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 38, 11, 53),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Details(),
            SizedBox(
              height: 200,
            ),
            BottonEnviar(),
            SizedBox(
              height: 15,
            ),
            BottonCancelar()
          ],
        )));
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.25,
      child: Column(
        children: [
          Text(
            ' ENVIAR SOLICITUD DUO',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          // Row(
          //   children: [
          //     CircleAvatar(
          //       maxRadius: 40,
          //       backgroundImage: NetworkImage(
          //           'https://upload.wikimedia.org/wikipedia/commons/e/e6/Faker_at_the_2015.10.02_S5_Paris_day2.jpeg'),
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           'User_name',
          //           style: TextStyle(fontSize: 25),
          //         ),
          //         Text(
          //           'Ciudad_user',
          //           style: TextStyle(fontSize: 25),
          //         )
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class BottonEnviar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Color.fromARGB(255, 124, 86, 190),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: Text('Enviar')),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'duo');
        });
  }
}

class BottonCancelar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Color.fromARGB(255, 180, 172, 192),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            child: Text('Cancelar')),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'duo');
        });
  }
}
