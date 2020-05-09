import 'package:flutter/material.dart';

class MisPedidosView extends StatefulWidget {
  MisPedidosView({Key key}) : super(key: key);

  @override
  _MisPedidosViewState createState() => _MisPedidosViewState();
}

class _MisPedidosViewState extends State<MisPedidosView> {
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
                      tag: "MisPedidos",
                      child: Image.asset(
                        'assets/actions/MisPedidos.png',
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