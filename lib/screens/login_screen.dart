import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _AutBackgraund());
  }
}

class _AutBackgraund extends StatelessWidget {
  const _AutBackgraund({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 1,
      color: Color.fromARGB(255, 38, 11, 53),
      // width: double.infinity,
      // height: double.infinity,
      child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        _ImgDup(),
        _TxtBienvenido(),
        _BottonsInicio()
      ]),
    );
  }
}

class _ImgDup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/DUO.png'), fit: BoxFit.cover)),
    );
  }
}

class _TxtBienvenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.31,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Bienvenido a DUO',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Busca a otras personas en tus videojuegos y diviertete con ellos',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _BottonsInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.1,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Conectar',
                    style: TextStyle(color: Colors.white),
                  )),
              onPressed: () {
                Navigator.popAndPushNamed(context, 'conect');
              }),
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.1,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Color.fromARGB(251, 187, 134, 171),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    'Crear cuenta',
                    style: TextStyle(color: Colors.white),
                  )),
              onPressed: () {
                Navigator.popAndPushNamed(context, 'new_account');
              }),
        ),

        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //       elevation: 10,
        //       primary: Color.fromARGB(252, 151, 146, 177),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(100),
        //         ),
        //       )),
        //   child: const SizedBox(
        //       width: double.infinity,
        //       height: 100,
        //       child: Center(child: Text('Conectar'))),
        //   onPressed: () {
        //     Navigator.popAndPushNamed(context, 'conect');
        //   },
        // ),
        // const SizedBox(
        //   height: 4,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //       elevation: 10,
        //       primary: Color.fromARGB(249, 32, 25, 77),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(100),
        //         ),
        //       )),
        //   child: const SizedBox(
        //       width: double.infinity,
        //       height: 100,
        //       child: Center(child: Text('Crear Cuenta'))),
        //   onPressed: () {},
        // )
      ],
    );
  }
}
