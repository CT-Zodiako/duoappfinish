import 'package:flutter/material.dart';

class ContactanosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Fondo(),
    );
  }
}

class _Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 38, 11, 53),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 60),
          Text(
            'Contacta con nostros',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 450),
          Text(
            'Correo: cristianjvz98@gmail.com',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Color.fromARGB(251, 187, 134, 171),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: Text(
                    'FACEBOOK',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
              onPressed: () {})
        ],
      ),
    );
  }
}
