import 'package:flutter/material.dart';
import 'package:impuls/constants.dart';

class HelloText extends StatefulWidget {
  HelloText({Key key, this.name}) : super(key: key);
  final String name;

  @override
  _HelloTextState createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
      child: Row(
        children: <Widget>[
          Text(
            "Hola, ",
            style: kHelloTextStyle,
          ),
          Text(
            widget.name + "!",
            style: kSubheaderTextStyle,
          )
        ],
      ),
    );
  }
}
