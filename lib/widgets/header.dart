import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impuls/constants.dart';

class Header extends StatelessWidget {
  const Header({Key key, this.keyScaffold}) : super(key: key);
  final keyScaffold;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: kSpacingUnit * 6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white10],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.7,1.0]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {
                  keyScaffold.currentState.openDrawer();
                },
                customBorder: CircleBorder(),
                child: Container(
                  height: kSpacingUnit * 4,
                  width: kSpacingUnit * 4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kSpacingUnit * 1.2),
                    child: SvgPicture.asset('assets/Menu.svg'),
                  ),
                ),
              ),
              Text(
                "impuls",
                style: kSubheaderTextStyle,
              ),
              InkWell(
                onTap: () {},
                customBorder: CircleBorder(),
                child: Container(
                  height: kSpacingUnit * 4,
                  width: kSpacingUnit * 4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kSpacingUnit),
                    child: SvgPicture.asset('assets/notification.svg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
