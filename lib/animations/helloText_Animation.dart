import 'package:flutter/material.dart';
import 'package:impuls/widgets/welcome_text.dart';

class HelloTextAnimation extends StatefulWidget {
  HelloTextAnimation({Key key, this.name}) : super(key: key);
  final String name;
  @override
  _HelloTextAnimationState createState() => _HelloTextAnimationState();
}

class _HelloTextAnimationState extends State<HelloTextAnimation> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
              0.0,
              50 * (1.0 - animation.value),
              0.0,
            ),
            child: HelloText(name: widget.name,)
          ),
        );
      },
    );
  }
}