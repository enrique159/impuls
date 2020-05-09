import 'package:flutter/material.dart';

class FooterHome extends StatelessWidget {
  const FooterHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(children: <Widget>[
          Text("Soporte y ayuda"),
          Row(children: <Widget>[
            Icon(Icons.phone),
          ],),
        ],),
      ),
    );
  }
}