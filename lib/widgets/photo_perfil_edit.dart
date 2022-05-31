import 'package:flutter/material.dart';

class PhotoPerfilEdit extends StatelessWidget {
  const PhotoPerfilEdit({Key? key, this.url}) : super(key: key);
  final String? url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        decoration: _BuildBoxDecoration(),
        width: double.infinity,
        height: 450,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          child: this.url == null
              ? Image(
                  image: AssetImage('assets/no-image.png'),
                  fit: BoxFit.cover,
                )
              : FadeInImage(
                  image: NetworkImage(this.url!),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }

  BoxDecoration _BuildBoxDecoration() => BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(0, 5))
          ]);
}
