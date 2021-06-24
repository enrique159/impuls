import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impuls/constants.dart';

class FooterHome extends StatelessWidget {
  const FooterHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Text("Soporte y ayuda"),
            SizedBox(height: kSpacingUnit),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  onPressed: () {},
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(kSpacingUnit),
                    child: SvgPicture.asset(
                      'assets/call.svg',
                      width: kSpacingUnit * 1.6,
                    ),
                  ),
                ),
                FlatButton(
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  onPressed: () {},
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(kSpacingUnit),
                    child: SvgPicture.asset(
                      'assets/mail.svg',
                      width: kSpacingUnit * 1.6,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
