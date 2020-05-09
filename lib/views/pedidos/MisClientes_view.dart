import 'package:flutter/material.dart';

class MisClientesView extends StatefulWidget {
  MisClientesView({Key key}) : super(key: key);

  @override
  _MisClientesViewState createState() => _MisClientesViewState();
}

class _MisClientesViewState extends State<MisClientesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Hero(
                      transitionOnUserGestures: true,
                      tag: "MisClientes",
                      child: Image.asset(
                        'assets/actions/MisClientes.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}