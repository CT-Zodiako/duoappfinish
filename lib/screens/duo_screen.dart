import 'package:duo/services/services.dart';

import 'package:duo/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DouScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    final userService = Provider.of<UsuarioService>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 54, 26, 102),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: userService.user.length,
                itemBuilder: (BuildContext context, index) => GestureDetector(
                        child: (CardDuo(
                      user: userService.user[index],
                    )))),
            AppBarCustom(),
          ],
        ));
  }
}
