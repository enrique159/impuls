import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:impuls/constants.dart';
import 'package:impuls/views/pedidos/BuscarProducto_view.dart';
import 'package:impuls/views/pedidos/MisClientes_view.dart';
import 'package:impuls/views/pedidos/MisPedidos_view.dart';
import 'package:impuls/views/pedidos/NewPedido_view.dart';

class ActionsButtons extends StatefulWidget {
  const ActionsButtons({Key key}) : super(key: key);

  @override
  _ActionsButtonsState createState() => _ActionsButtonsState();
}

class _ActionsButtonsState extends State<ActionsButtons> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var widthContainer = MediaQuery.of(context).size.width / 2.36;
    var heightContainer = 110.0;

    var cRealizarPedido = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit * 1.8),
      splashColor: kSplashColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPedidoView()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: "RealizarPedido",
                    child: Image.asset('assets/actions/RealizarPedido.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: kSpacingUnit,
                left: kSpacingUnit * 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Realizar Pedido",
                      style: kCardActionTextStyle,
                    ),
                    Text(
                      "Selecciona del catálago",
                      style: kCardActionSubTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // -------------------------------------------------------------------
    // --------------------------------------------------------------------
    // BUSCAR PRODUCTO
    // -------------------------------------------------------------------
    // -------------------------------------------------------------------

    var cBuscarProducto = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.8),
      splashColor: kSplashColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BuscarProductoView()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: "BuscarProducto",
                    child: Image.asset('assets/actions/BuscarProducto.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: kSpacingUnit,
                left: kSpacingUnit * 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Buscar Producto",
                      style: kCardActionTextStyle,
                    ),
                    Text(
                      "Encuentra esos pares",
                      style: kCardActionSubTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    var cMisPedidos = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.8),
      splashColor: kSplashColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MisPedidosView()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: "MisPedidos",
                    child: Image.asset('assets/actions/MisPedidos.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: kSpacingUnit,
                left: kSpacingUnit * 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mis Pedidos",
                      style: kCardActionTextStyle,
                    ),
                    Text(
                      "Historial y consultas",
                      style: kCardActionSubTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    var cMisClientes = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.8),
      splashColor: kSplashColor,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MisClientesView()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: "MisClientes",
                    child: Image.asset('assets/actions/MisClientes.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: kSpacingUnit,
                left: kSpacingUnit * 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mis Clientes",
                      style: kCardActionTextStyle,
                    ),
                    Text(
                      "Gestiona tus contactos",
                      style: kCardActionSubTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 1.5),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                cRealizarPedido,
                cMisPedidos,
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                cBuscarProducto,
                cMisClientes,
              ],
            ),
          ],
        ),
      ),
    );
  }

}
