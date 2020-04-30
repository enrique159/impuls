import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:impuls/animations/FadeInAnimation.dart';
import 'package:impuls/constants.dart';
import 'package:impuls/widgets/actions.dart';
import 'package:impuls/widgets/header.dart';
import 'package:impuls/widgets/profile_card.dart';
import 'package:impuls/widgets/resumen_cards.dart';
import 'package:impuls/widgets/welcome_text.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    var nameUser = "Alexandra";
    var header = Header();
    var profile = FadeInAnimation(child: ProfileCard(), delay: 0.0,);
    var welcome = FadeInAnimation(child: HelloText(name: nameUser),delay: 0.2);
    var actions = FadeInAnimation(child: ActionsButtons(), delay: 0.4);
    var resumen = FadeInAnimation(child: ResumenCards(), delay: 0.6,);


    return Scaffold(
      backgroundColor: Colors.white,
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
