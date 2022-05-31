import 'package:duo/models/models.dart';

import 'package:flutter/material.dart';

class Card20 extends StatelessWidget {
  final Game game;

  const Card20({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30, bottom: 20),
        width: double.infinity,
        height: 300,
        decoration: _CardBorders(),
        child: Stack(
            alignment: Alignment.bottomLeft,
            children: [_BackgraundImage(game.image), _NameGame(game.nameGame)]),
      ),
    );
  }

  BoxDecoration _CardBorders() {
    return BoxDecoration(
        color: Color.fromARGB(255, 54, 26, 102),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(color: Colors.black38, blurRadius: 10, offset: Offset(0, 7))
        ]);
  }
}

class _NameGame extends StatelessWidget {
  final String name_game;

  const _NameGame(this.name_game);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 70),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: _BuildBoxDecoration(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name_game,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _BuildBoxDecoration() => BoxDecoration(
      color: Color.fromARGB(255, 38, 11, 53),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25), topRight: Radius.circular(25)));
}

class _BackgraundImage extends StatelessWidget {
  final String? url;

  const _BackgraundImage(this.url);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 300,
        child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(url!),
            fit: BoxFit.cover),
      ),
    );
  }
}
