import 'package:duo/models/models.dart';

import 'package:flutter/material.dart';

class CardDuo extends StatelessWidget {
  final Usuario user;

  const CardDuo({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        Stack(
          children: [
            Container(
              decoration: _BuildBoxDecoration(),
              width: double.infinity,
              height: 350,
              child: _PhotoDUO(user.photo),
            ),
            Positioned(
              top: 320,
              left: 20,
              child: Text(
                user.nameUser,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              top: 280,
              left: 150,
              child: IconButton(
                icon: Icon(
                  Icons.cancel,
                  size: 50,
                  color: Color.fromARGB(251, 187, 134, 171),
                ),
                onPressed: () {
                  //TODO Cambiar duo en pantalla
                },
              ),
            ),
            Positioned(
              top: 280,
              left: 200,
              child: IconButton(
                icon: Icon(
                  Icons.check_circle,
                  size: 50,
                  color: Color.fromARGB(251, 187, 134, 171),
                ),
                onPressed: () => Navigator.pushNamed(context, 'senduo'),
                //TODO Entrar Screen de enviar duo
              ),
            ),
          ],
        ),
      ]),
    );
  }

  BoxDecoration _BuildBoxDecoration() => BoxDecoration(
          color: Color.fromARGB(255, 54, 26, 102),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(0, 5))
          ]);
}

class _PhotoDUO extends StatelessWidget {
  const _PhotoDUO(
    this.url,
  );

  final String? url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FadeInImage(
        image: NetworkImage(url!),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fit: BoxFit.cover,
      ),
    );
  }
}
