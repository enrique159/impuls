import 'package:flutter/material.dart';
import 'package:impuls/constants.dart';

class NewPedidoView extends StatefulWidget {
  NewPedidoView({Key key}) : super(key: key);

  @override
  _NewPedidoViewState createState() => _NewPedidoViewState();
}

class _NewPedidoViewState extends State<NewPedidoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      tag: "RealizarPedido",
                      child: Image.asset(
                        'assets/actions/RealizarPedido.png',
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
