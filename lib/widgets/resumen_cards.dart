import 'package:flutter/material.dart';
import 'package:impuls/constants.dart';

class ResumenCards extends StatefulWidget {
  const ResumenCards({Key key}) : super(key: key);

  @override
  _ResumenCardsState createState() => _ResumenCardsState();
}

class _ResumenCardsState extends State<ResumenCards> with AutomaticKeepAliveClientMixin{
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 1.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: kSpacingUnit * 0.6, bottom: kSpacingUnit),
            child: Text(
              "Resumen del mes",
              style: kHelloTextStyle,
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ResumenPedidosCard(),
              ResumenPromedioCard(),
              ResumenVentasCard()
            ],
          ),
        ],
      ),
    );
  }

}

class ResumenPedidosCard extends StatelessWidget {
  const ResumenPedidosCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.6),
        child: AspectRatio(
          aspectRatio: 2 / 3.2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit * 1.6),
              image: DecorationImage(
                image: AssetImage("assets/BG1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit, vertical: kSpacingUnit * 1.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Pedidos", style: kCardActionTextStyle),
                  Text("Realizados", style: kCardActionTextStyle),
                  Text("47", style: kPedidosValorTextStyle,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResumenPromedioCard extends StatelessWidget {
  const ResumenPromedioCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.6),
        child: AspectRatio(
          aspectRatio: 2 / 3.2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit * 1.6),
              image: DecorationImage(
                image: AssetImage("assets/BG2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit, vertical: kSpacingUnit * 1.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Ventas", style: kCardActionResumenTextStyle),
                  Text("Promedio", style: kCardActionResumenTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("2.6 ", style: kVentasValorTextStyle,),
                      Text("▲", style: kTriangleUpTextStyle,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResumenVentasCard extends StatelessWidget {
  const ResumenVentasCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.6),
        child: AspectRatio(
          aspectRatio: 2 / 3.2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit * 1.6),
              image: DecorationImage(
                image: AssetImage("assets/BG3.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit, vertical: kSpacingUnit * 1.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Ingresos", style: kCardActionTextStyle),
                  Text("Totales", style: kCardActionTextStyle),
                  SizedBox(height: kSpacingUnit * 0.7),
                  Text("13'593", style: kIngresosValorTextStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
