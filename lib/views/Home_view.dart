import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:impuls/animations/FadeInAnimation.dart';
import 'package:impuls/constants.dart';
import 'package:impuls/data/UsuarioData.dart';
import 'package:impuls/widgets/actions.dart';
import 'package:impuls/widgets/drawer_menu.dart';
import 'package:impuls/widgets/event_card.dart';
import 'package:impuls/widgets/footer_home.dart';
import 'package:impuls/widgets/header.dart';
import 'package:impuls/widgets/noticias_seccion.dart';
import 'package:impuls/widgets/profile_card.dart';
import 'package:impuls/widgets/resumen_cards.dart';
import 'package:impuls/widgets/welcome_text.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    var nameUser = usuarioPrueba.nombre.split(" ");
    var nombre = nameUser[0];

    var menudrawer = DrawerMenu();
    var header = Header(keyScaffold: _scaffoldKey);
    var profile = FadeInAnimation(child: ProfileCard(), delay: 0.0);
    var welcome = FadeInAnimation(child: HelloText(name: nombre), delay: 0.15);
    var actions = FadeInAnimation(child: ActionsButtons(), delay: 0.3);
    var resumen = FadeInAnimation(child: ResumenCards(), delay: 0.45);
    var noticias = FadeInAnimation(child: NoticiasSeccion(), delay: 0.6);
    var evento = FadeInAnimation(child:EventCard(), delay: 0.6);
    var footer = FooterHome();

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: menudrawer,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(height: kSpacingUnit * 8),
                profile,
                SizedBox(height: kSpacingUnit * 3),
                welcome,
                SizedBox(height: kSpacingUnit),
                actions,
                SizedBox(height: kSpacingUnit * 3),
                resumen,
                SizedBox(height: kSpacingUnit * 3),
                noticias,
                SizedBox(height: kSpacingUnit * 5),
                evento,
                SizedBox(height: kSpacingUnit * 8),
                footer,
                SizedBox(height: kSpacingUnit * 8),
              ],
            ),
            Positioned(
              top: 0,
              child: header,
            ),
          ],
        ),
      ),
    );
  }
}
