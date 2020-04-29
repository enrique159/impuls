import 'package:flutter/material.dart';

class DefaultAnimation extends StatefulWidget {
  DefaultAnimation({Key key}) : super(key: key);

  @override
  _DefaultAnimationState createState() => _DefaultAnimationState();
}

class _DefaultAnimationState extends State<DefaultAnimation> with SingleTickerProviderStateMixin{
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
            child: Text("Cambiar esto")
          ),
        );
      },
    );
  }
}