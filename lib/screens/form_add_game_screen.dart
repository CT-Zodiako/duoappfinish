import 'package:duo/ui/input_decoration.dart';
import 'package:duo/widgets/appbar_custom.dart';
import 'package:flutter/material.dart';

class FormAddGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _AutBackgraund());
  }
}

class _AutBackgraund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 38, 11, 53),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: [
          AppBarCustom(),
          _FormContainer(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('Agregar juego', style: TextStyle(color: Colors.white38)),
                SizedBox(
                  height: 30,
                ),
                _LoginForm(),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ]),
      ),
    );
  }
}

class _FormContainer extends StatelessWidget {
  final Widget child;

  const _FormContainer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: Estilosdelformulario(),
        child: this.child,
      ),
    );
  }

  BoxDecoration Estilosdelformulario() => BoxDecoration(
          color: Color.fromARGB(84, 62, 16, 105),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
          ]);
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Valorant',
                    labelText: 'Nombre juego',
                    prefixIcon: Icons.gamepad_outlined),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Zodiako',
                    labelText: 'User o Nick',
                    prefixIcon: Icons.person),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.deepPurple,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text(
                      'Agregar',
                      style: TextStyle(color: Colors.white),
                    )),
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
