import 'package:duo/screens/screens.dart';
import 'package:duo/services/services.dart';
import 'package:duo/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gameService = Provider.of<GameService>(context);
    if (gameService.isLoading) return LoadingScreen();

    return Scaffold(
        backgroundColor: Color(0xFF361A66),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: gameService.games.length,
                itemBuilder: (BuildContext context, index) => GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'duo'),
                    child: Card20(
                      game: gameService.games[index],
                    ))),
            AppBarCustom(),
          ],
        ));
  }
}
