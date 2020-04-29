import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impuls/constants.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthContainer = MediaQuery.of(context).size.width / 2.36;
    var heightContainer = 110.0;

    var cRealizarPedido = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit * 1.8),
      splashColor: kSplashColor,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
            color: kPrimaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: kSpacingUnit * 1.3,
              right: kSpacingUnit * 1.3,
              bottom: kSpacingUnit,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/shoes.svg',
                      width: kSpacingUnit * 2.6,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: widthContainer * 0.76,
                        child: Text(
                          "Realizar Pedido",
                          style: kCardActionTextStyle,
                        ),
                      ),
                      Text(
                        "Selecciona del catálago",
                        style: kCardActionSubTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

    var cBuscarProducto = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.8),
      splashColor: kSplashColor,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
            color: kGreenColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: kSpacingUnit * 1.3,
              right: kSpacingUnit * 1.3,
              bottom: kSpacingUnit,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/search.svg',
                      width: kSpacingUnit * 2.2,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: widthContainer * 0.76,
                        child: Text(
                          "Buscar Producto",
                          style: kCardActionTextStyle,
                        ),
                      ),
                      Text(
                        "Encuentra esos pares",
                        style: kCardActionSubTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

    var cMisPedidos = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.8),
      splashColor: kSplashColor,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
            color: kPurpleColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: kSpacingUnit * 1.3,
              right: kSpacingUnit * 1.3,
              bottom: kSpacingUnit,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/History.svg',
                      width: kSpacingUnit * 2,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: widthContainer * 0.76,
                        child: Text(
                          "Mis Pedidos",
                          style: kCardActionTextStyle,
                        ),
                      ),
                      Text(
                        "Historial y consultas",
                        style: kCardActionSubTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

    var cMisClientes = InkWell(
      borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.8),
      splashColor: kSplashColor,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(kSpacingUnit * 0.5),
        child: Container(
          height: heightContainer,
          width: widthContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit.w * 1.4),
            color: kOrangeColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: kSpacingUnit * 1.3,
              right: kSpacingUnit * 1.3,
              bottom: kSpacingUnit,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/Person.svg',
                      width: kSpacingUnit * 2,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: widthContainer * 0.76,
                        child: Text(
                          "Mis Clientes",
                          style: kCardActionTextStyle,
                        ),
                      ),
                      Text(
                        "Agrega a tus clientes",
                        style: kCardActionSubTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
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
