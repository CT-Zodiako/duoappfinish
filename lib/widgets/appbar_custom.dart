import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 38, 11, 53),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
      ),
      width: double.infinity,
      height: size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Color.fromARGB(251, 187, 134, 171),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: const SizedBox(
                width: 80, height: 20, child: Center(child: Text('JUEGOS'))),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          SizedBox(
            width: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                // primary: Color.fromARGB(251, 187, 134, 171),
                primary: Color.fromARGB(251, 187, 134, 171),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: const SizedBox(
                width: 100, height: 20, child: Center(child: Text('DUO'))),
            onPressed: () {
              Navigator.pushNamed(context, 'duo');
            },
          ),
          SizedBox(
            width: 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                // primary: Color.fromARGB(251, 187, 134, 171),
                primary: Color.fromARGB(251, 187, 134, 171),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: const SizedBox(
                width: 100, height: 20, child: Center(child: Text('PERFIL'))),
            onPressed: () {
              Navigator.pushNamed(context, 'perfil');
            },
          ),
        ],
      ),
    );
  }
}
