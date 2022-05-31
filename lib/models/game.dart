// To parse this JSON data, do
//
//     final game = gameFromMap(jsonString);

import 'dart:convert';

class Game {
  Game({
    required this.image,
    required this.nameGame,
  });

  String image;
  String nameGame;
  String? id;

  factory Game.fromJson(String str) => Game.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Game.fromMap(Map<String, dynamic> json) => Game(
        image: json["image"],
        nameGame: json["name_game"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "name_game": nameGame,
      };
}
