import 'package:flutter/material.dart';

class BuscarProductoView extends StatefulWidget {
  BuscarProductoView({Key key}) : super(key: key);

  @override
  _BuscarProductoViewState createState() => _BuscarProductoViewState();
}

class _BuscarProductoViewState extends State<BuscarProductoView> {
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
                      tag: "BuscarProducto",
                      child: Image.asset(
                        'assets/actions/BuscarProducto.png',
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