import 'package:flutter/material.dart';
import 'package:flutter_parallax/flutter_parallax.dart';
import '../constants.dart';

class EventCard extends StatefulWidget {
  const EventCard({Key key}) : super(key: key);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: new Parallax.inside(
            mainAxisExtent: 300.0,
            child: FadeInImage.assetNetwork(
              width: MediaQuery.of(context).size.width,
              placeholder: 'assets/loading.png',
              image:
                  "https://firebasestorage.googleapis.com/v0/b/imagestorage-85fb4.appspot.com/o/event_light.jpg?alt=media&token=bd2b9f63-6b77-4900-9c63-79dee3611c49",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
