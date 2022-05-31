import 'package:duo/services/auth_servis.dart';
import 'package:duo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AjustesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_Fondo()],
      ),
    );
  }
}

class _Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromARGB(255, 38, 11, 53),
      width: size.width * 1,
      height: size.height * 1,
      alignment: Alignment.topLeft,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            CircleAvatar(
              maxRadius: 90,
              backgroundImage: NetworkImage(
                  'https://i.imgur.com/HPxeBXZ.jpg'),
            ),
            Text(
              'Cristian Tovar',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            _Editar(),
            SizedBox(
              height: 50,
            ),
            _Contacto(),
            SizedBox(
              height: 50,
            ),
            _SobreNosotros(),
            SizedBox(
              height: 100,
            ),
            _ExitSeccion()
          ],
        ),
      ),
    );
  }
}

class _Editar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: Colors.deepPurple,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Editar perfil',
                style: TextStyle(color: Colors.white),
              )),
          onPressed: () {
            Navigator.pushNamed(context, 'editperfil');
          }),
    );
  }
}

class _Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: Colors.deepPurple,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Contactanos',
                style: TextStyle(color: Colors.white),
              )),
          onPressed: () {
            Navigator.pushNamed(context, 'contactanos');
          }),
    );
  }
}

class _SobreNosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: Colors.deepPurple,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Sobre nosotros',
                style: TextStyle(color: Colors.white),
              )),
          onPressed: () {
            Navigator.pushNamed(context, 'nosotros');
          }),
    );
  }
}

class _ExitSeccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authServices = Provider.of<AuthService>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: Colors.deepPurple,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Cerrar Sesion',
                style: TextStyle(color: Colors.white),
              )),
          onPressed: () {
            authServices.logout();
            Navigator.pushReplacementNamed(context, 'login');
          }),
    );
  }
}
