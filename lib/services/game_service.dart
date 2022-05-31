import 'dart:convert';

import 'package:duo/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class GameService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-87ddf-default-rtdb.firebaseio.com';

  final List<Game> games = [];

  bool isLoading = true;

  GameService() {
    this.loadGame();
  }

  Future loadGame() async {
    this.isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'games.json');
    final resp = await http.get(url);

    final Map<String, dynamic> gameMap = json.decode(resp.body);

    gameMap.forEach((key, value) {
      final gameTemp = Game.fromMap(value);
      gameTemp.id = key;
      this.games.add(gameTemp);
    });

    this.isLoading = false;
    notifyListeners();
    return this.games;
  }
}
