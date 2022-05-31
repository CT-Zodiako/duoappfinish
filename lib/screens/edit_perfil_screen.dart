import 'package:duo/services/services.dart';
import 'package:duo/ui/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class EditPerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                PhotoPerfilEdit(url: usuarioService.selectedUsuario?.photo),
                Positioned(
                    top: 60,
                    left: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'perfil'),
                    )),
                Positioned(
                    top: 60,
                    right: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //TODO Entrar a la galeria o tomar foto
                      },
                    ))
              ],
            ),
            _FormContra(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 38, 11, 53),
        child: Icon(Icons.save_as_outlined, color: Colors.white),
        onPressed: () => Navigator.pushNamed(context, 'perfil'),
        //TODO GUARDAR
      ),
    );
  }
}

class _FormContra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 200,
        decoration: _BuildBoxDecoration(),
        child: Form(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextFormField(
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Nueva Contrasena',
                    labelText: 'Nueva Contrasena')),
            SizedBox(height: 30)
          ],
        )),
      ),
    );
  }

  BoxDecoration _BuildBoxDecoration() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 5),
                blurRadius: 5)
          ]);
}
