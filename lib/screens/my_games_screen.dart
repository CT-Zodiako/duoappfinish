import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MyGamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCustom(),
          ListView(
            shrinkWrap: true,
            children: [
              _CustomCard(
                name: 'League of Legends ',
                imageUrl:
                    'https://phantom-marca.unidadeditorial.es/abfd01e815b28d5553ed7ba9fa2e9647/crop/0x0/1980x1112/resize/1320/f/jpg/assets/multimedia/imagenes/2022/03/16/16474267987028.jpg',
              ),
            ],
          ),
          FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              child: const Icon(Icons.add),
              onPressed: () =>
                  {Navigator.popAndPushNamed(context, 'formaddgame')}),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const _CustomCard({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: InkWell(
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name!),
              )
          ],
        ),
        onTap: () {
          Navigator.popAndPushNamed(context, 'duo');
        },
      ),
    );
  }
}
